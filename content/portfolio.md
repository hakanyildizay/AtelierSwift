---
title: Portfolio
---
I've built iOS apps for more than 15 years, mostly in mobile banking and fintech, from native UIKit and SwiftUI to Kotlin Multiplatform and the CI/CD around them. Lately I also write the Swift server side, which is what most of the [articles](/articles/) here are about.

## Independent engineering practice

### Freelance
*02.2026 – Present · Istanbul*

My own projects, end to end: the iOS client, the Swift backend behind it, and the infrastructure it runs on.

- Built a Swift Vapor backend for a fitness streaming service. API routes use JWT bearer authentication, and HLS video streams come from S3 (via Soto) through signed AWS CloudFront cookies to a native SwiftUI client. The services run in Docker on AWS ECS. The [AuthService series](/articles/auth-server-for-swift-server/) walks through its authentication part.
- Prototyped a 3D endless runner in RealityKit, with procedural terrain, collision detection and a Blender asset pipeline, developed with agentic AI tooling.

## Softtech

Technology subsidiary of İşbank, Turkey's largest private bank. 11.2019 – 01.2026.

### Senior Solution Architect (iOS)
*02.2022 – 01.2026 · Istanbul*

Led iOS work on cross-platform and high-traffic banking apps, from architecture to day-to-day code.

- Led 3 iOS engineers in a cross-platform team of 10+ developers on LetsGo (Letshego), a micro-loan platform live in 10 sub-Saharan African markets.
- Owned the native iOS layer of its Kotlin Multiplatform codebase, which shared about 80% of the business logic with Android. Caught Android-only APIs before release and supplied the iOS implementations.
- Modernised the shared UI design system (.xcframework) of IsCep, Turkey's #1 mobile banking app with 1M daily active users: from Objective-C to Swift and from UIKit to SwiftUI, in live production.
- Improved on-device ID card recognition in an İşbank onboarding flow with a custom Core ML model, trained on a self-built dataset of Turkish ID MRZ characters. When OCR moved to the backend, narrowed the on-device part to card format validation.
- Built cryptocurrency and premium-customer features in UIKit and SwiftUI with MVVM, including camera-based card capture with VisionKit, and helped the team with iOS CI/CD on GitHub Actions, Gerrit and Azure DevOps.

### Solution Architect (iOS)
*11.2019 – 02.2022 · Istanbul*

Architect and team lead for a retail app built from scratch.

- Architected Paşabahçe Store, an e-commerce app for iPhone and iPad with AWS Amplify and Amazon Cognito authentication. It shipped to the App Store and reached a 4.0 rating with 100K+ downloads.
- Led an iOS team of 3 to 5 engineers over 24 sprints, and negotiated scope and capacity with management to keep the delivery date.

## ING Bank Turkey

The Turkish operation of the Dutch ING banking group. 08.2014 – 10.2019.

### Senior Software Consultant
*09.2016 – 10.2019 · Istanbul*

Technical lead of the ING Mobile Banking Turkey iOS app (40K monthly active users).

- Responsible for architecture, SSL certificate pinning, code quality, performance and the release cadence through to the App Store.
- Automated iOS deployment with Fastlane and Microsoft TFS. The App Store and ad hoc pipelines cut release effort from 2 hours to 10 minutes and became the team standard.
- Set the hiring criteria for the 4-engineer core iOS team, interviewed candidates, and coached junior engineers on Swift and mobile architecture.

### Software Consultant
*08.2014 – 09.2016 · Istanbul*

Feature work on ING's mobile wallet.

- Developed transactional features for the ParaMara mobile wallet in Objective-C.
- Co-designed its watchOS companion app on site with Apple engineers at Apple HQ in Cupertino.

## Valensas Technology Services

Software house for banking, telecom and e-commerce clients. 03.2009 – 11.2013.

### Software Engineer
*03.2009 – 11.2013 · Istanbul*

My first iOS years, building apps for a range of clients from iOS 4 onwards.

- Created the Akbank Private Banking iOS app, with financial charts drawn in QuartzCore and client-side data cached in Core Data.
- Built the Turkcell Pusula and En Yakın universal apps on MapKit, REST services and GCD, including an augmented reality mode written in OpenGL ES.
- Rebuilt Akbank Direkt from a hybrid mobile banking app as a native UIKit app, working in Agile Scrum.
- Shipped iOS features for n11.com, Sahibinden.com, Turkcell Müzik, Turkcell İBB Trafik and Volvo Car Turkey.
