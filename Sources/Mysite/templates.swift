import Foundation
import HTML
import Moon
import Saga
import SagaSwimRenderer

func baseHtml(title pageTitle: String, @NodeBuilder children: () -> NodeConvertible) -> Node {
  html(lang: "en-US") {
    head {
      meta(charset: "utf-8")
      meta(content: "width=device-width, initial-scale=1", name: "viewport")
      title { pageTitle }
      link(href: Saga.hashed("/static/style.css"), rel: "stylesheet")
    }
    body {
      header {
        nav {
          a(class: "site-title", href: "/") { "Atelier Swift" }
          div(class: "nav-links") {
            a(href: "/portfolio/") { "Portfolio" }
            a(href: "/articles/") { "Articles" }
            a(class: "nav-cta", href: "mailto:hakanyildizay@gmail.com?subject=Working%20together") {
              Node.raw(#"<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true"><rect x="2.5" y="4.5" width="19" height="15" rx="2.5"/><path d="m2.5 7 9.5 6.5L21.5 7"/></svg>"#)
              "Work with me"
            }
          }
        }
      }
      main {
        children()
      }
      footer {
        p {
          "Built with "
          a(href: "https://github.com/loopwerk/Saga") { "Saga" }
        }
      }
    }
  }
}

func renderArticle(context: ItemRenderingContext<ArticleMetadata>) -> Node {
  baseHtml(title: context.item.title) {
    article {
      h1 { context.item.title }
      ul(class: "tags") {
        context.item.metadata.tags.map { tag in
          li {
            a(href: "/articles/tag/\(tag.slugified)/") { tag }
          }
        }
      }
      Node.raw(Moon.shared.highlightCodeBlocks(in: context.item.body))
    }
  }
}

func renderArticles(context: ItemsRenderingContext<ArticleMetadata>) -> Node {
  baseHtml(title: "Articles") {
    h1 { "Articles" }
    context.items.map { article in
      div(class: "article-card") {
        h2 {
          a(href: article.url) { article.title }
        }
        if let summary = article.metadata.summary {
          p { summary }
        }
      }
    }
  }
}

func renderTag<T>(context: PartitionedRenderingContext<T, ArticleMetadata>) -> Node {
  baseHtml(title: "Articles tagged \(context.key)") {
    h1 { "Articles tagged \(context.key)" }
    context.items.map { article in
      div(class: "article-card") {
        h2 {
          a(href: article.url) { article.title }
        }
      }
    }
  }
}

func renderPage(context: ItemRenderingContext<EmptyMetadata>) -> Node {
  baseHtml(title: context.item.title) {
    div(class: "page") {
      // The home page opens with its own hero heading instead.
      if context.item.relativeSource.string != "index.md" {
        h1 { context.item.title }
      }
      Node.raw(Moon.shared.highlightCodeBlocks(in: context.item.body))
    }
  }
}