package com.google.firebase.messaging;

import androidx.core.app.NotificationCompat;
import com.google.firebase.messaging.reporting.MessagingClientEvent;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.io.IOException;
/* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
/* loaded from: classes5.dex */
public final class a implements q8.a {

    /* renamed from: a  reason: collision with root package name */
    public static final q8.a f21119a = new a();

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* renamed from: com.google.firebase.messaging.a$a  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    private static final class C0310a implements p8.c<MessagingClientEvent> {

        /* renamed from: a  reason: collision with root package name */
        static final C0310a f21120a = new C0310a();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f21121b = p8.b.a("projectNumber").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        /* renamed from: c  reason: collision with root package name */
        private static final p8.b f21122c = p8.b.a("messageId").b(com.google.firebase.encoders.proto.a.b().c(2).a()).a();

        /* renamed from: d  reason: collision with root package name */
        private static final p8.b f21123d = p8.b.a("instanceId").b(com.google.firebase.encoders.proto.a.b().c(3).a()).a();

        /* renamed from: e  reason: collision with root package name */
        private static final p8.b f21124e = p8.b.a("messageType").b(com.google.firebase.encoders.proto.a.b().c(4).a()).a();

        /* renamed from: f  reason: collision with root package name */
        private static final p8.b f21125f = p8.b.a("sdkPlatform").b(com.google.firebase.encoders.proto.a.b().c(5).a()).a();

        /* renamed from: g  reason: collision with root package name */
        private static final p8.b f21126g = p8.b.a("packageName").b(com.google.firebase.encoders.proto.a.b().c(6).a()).a();

        /* renamed from: h  reason: collision with root package name */
        private static final p8.b f21127h = p8.b.a("collapseKey").b(com.google.firebase.encoders.proto.a.b().c(7).a()).a();

        /* renamed from: i  reason: collision with root package name */
        private static final p8.b f21128i = p8.b.a(HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY).b(com.google.firebase.encoders.proto.a.b().c(8).a()).a();

        /* renamed from: j  reason: collision with root package name */
        private static final p8.b f21129j = p8.b.a("ttl").b(com.google.firebase.encoders.proto.a.b().c(9).a()).a();

        /* renamed from: k  reason: collision with root package name */
        private static final p8.b f21130k = p8.b.a("topic").b(com.google.firebase.encoders.proto.a.b().c(10).a()).a();

        /* renamed from: l  reason: collision with root package name */
        private static final p8.b f21131l = p8.b.a("bulkId").b(com.google.firebase.encoders.proto.a.b().c(11).a()).a();

        /* renamed from: m  reason: collision with root package name */
        private static final p8.b f21132m = p8.b.a(NotificationCompat.CATEGORY_EVENT).b(com.google.firebase.encoders.proto.a.b().c(12).a()).a();

        /* renamed from: n  reason: collision with root package name */
        private static final p8.b f21133n = p8.b.a("analyticsLabel").b(com.google.firebase.encoders.proto.a.b().c(13).a()).a();

        /* renamed from: o  reason: collision with root package name */
        private static final p8.b f21134o = p8.b.a("campaignId").b(com.google.firebase.encoders.proto.a.b().c(14).a()).a();

        /* renamed from: p  reason: collision with root package name */
        private static final p8.b f21135p = p8.b.a("composerLabel").b(com.google.firebase.encoders.proto.a.b().c(15).a()).a();

        private C0310a() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(MessagingClientEvent messagingClientEvent, p8.d dVar) throws IOException {
            dVar.b(f21121b, messagingClientEvent.l());
            dVar.f(f21122c, messagingClientEvent.h());
            dVar.f(f21123d, messagingClientEvent.g());
            dVar.f(f21124e, messagingClientEvent.i());
            dVar.f(f21125f, messagingClientEvent.m());
            dVar.f(f21126g, messagingClientEvent.j());
            dVar.f(f21127h, messagingClientEvent.d());
            dVar.d(f21128i, messagingClientEvent.k());
            dVar.d(f21129j, messagingClientEvent.o());
            dVar.f(f21130k, messagingClientEvent.n());
            dVar.b(f21131l, messagingClientEvent.b());
            dVar.f(f21132m, messagingClientEvent.f());
            dVar.f(f21133n, messagingClientEvent.a());
            dVar.b(f21134o, messagingClientEvent.c());
            dVar.f(f21135p, messagingClientEvent.e());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes5.dex */
    private static final class b implements p8.c<c9.a> {

        /* renamed from: a  reason: collision with root package name */
        static final b f21136a = new b();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f21137b = p8.b.a("messagingClientEvent").b(com.google.firebase.encoders.proto.a.b().c(1).a()).a();

        private b() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(c9.a aVar, p8.d dVar) throws IOException {
            dVar.f(f21137b, aVar.a());
        }
    }

    /* compiled from: AutoProtoEncoderDoNotUseEncoder.java */
    /* loaded from: classes5.dex */
    private static final class c implements p8.c<j0> {

        /* renamed from: a  reason: collision with root package name */
        static final c f21138a = new c();

        /* renamed from: b  reason: collision with root package name */
        private static final p8.b f21139b = p8.b.d("messagingClientEventExtension");

        private c() {
        }

        @Override // p8.c
        /* renamed from: b */
        public void a(j0 j0Var, p8.d dVar) throws IOException {
            dVar.f(f21139b, j0Var.b());
        }
    }

    private a() {
    }

    @Override // q8.a
    public void a(q8.b<?> bVar) {
        bVar.a(j0.class, c.f21138a);
        bVar.a(c9.a.class, b.f21136a);
        bVar.a(MessagingClientEvent.class, C0310a.f21120a);
    }
}
