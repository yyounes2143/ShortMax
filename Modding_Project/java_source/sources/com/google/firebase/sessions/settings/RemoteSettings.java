package com.google.firebase.sessions.settings;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import j9.b;
import j9.m0;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Regex;
import kotlin.time.DurationUnit;
import kotlin.time.b;
import kotlin.time.c;
import m9.g;
import m9.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qt.d;
import x8.e;
/* compiled from: RemoteSettings.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRemoteSettings.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,159:1\n116#2,11:160\n*S KotlinDebug\n*F\n+ 1 RemoteSettings.kt\ncom/google/firebase/sessions/settings/RemoteSettings\n*L\n70#1:160,11\n*E\n"})
/* loaded from: classes5.dex */
public final class RemoteSettings implements i {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final a f21631g = new a(null);

    /* renamed from: h  reason: collision with root package name */
    private static final int f21632h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final Regex f21633i;
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final m0 f21634a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final e f21635b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final b f21636c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final m9.a f21637d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final g f21638e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final qt.a f21639f;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: RemoteSettings.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            return RemoteSettings.f21632h;
        }

        private a() {
        }
    }

    static {
        b.a aVar = kotlin.time.b.f61250b;
        f21632h = (int) kotlin.time.b.s(c.s(24, DurationUnit.HOURS));
        f21633i = new Regex(DomExceptionUtils.SEPARATOR);
    }

    public RemoteSettings(@NotNull m0 timeProvider, @NotNull e firebaseInstallationsApi, @NotNull j9.b appInfo, @NotNull m9.a configsFetcher, @NotNull g settingsCache) {
        Intrinsics.checkNotNullParameter(timeProvider, "timeProvider");
        Intrinsics.checkNotNullParameter(firebaseInstallationsApi, "firebaseInstallationsApi");
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(configsFetcher, "configsFetcher");
        Intrinsics.checkNotNullParameter(settingsCache, "settingsCache");
        this.f21634a = timeProvider;
        this.f21635b = firebaseInstallationsApi;
        this.f21636c = appInfo;
        this.f21637d = configsFetcher;
        this.f21638e = settingsCache;
        this.f21639f = d.b(false, 1, null);
    }

    private final String i(String str) {
        return f21633i.replace(str, "");
    }

    @Override // m9.i
    @Nullable
    public Double a() {
        return this.f21638e.c();
    }

    @Override // m9.i
    @Nullable
    public Boolean b() {
        return this.f21638e.e();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x008e A[Catch: all -> 0x0099, TRY_LEAVE, TryCatch #1 {all -> 0x0099, blocks: (B:36:0x0086, B:38:0x008e, B:43:0x009f), top: B:63:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x009f A[Catch: all -> 0x0099, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0099, blocks: (B:36:0x0086, B:38:0x008e, B:43:0x009f), top: B:63:0x0086 }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c2 A[Catch: all -> 0x004f, TRY_LEAVE, TryCatch #2 {all -> 0x004f, blocks: (B:21:0x004a, B:47:0x00b4, B:49:0x00c2, B:52:0x00cd), top: B:64:0x004a }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00cd A[Catch: all -> 0x004f, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x004f, blocks: (B:21:0x004a, B:47:0x00b4, B:49:0x00c2, B:52:0x00cd), top: B:64:0x004a }] */
    @Override // m9.i
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object c(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r14) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.sessions.settings.RemoteSettings.c(rs.c):java.lang.Object");
    }

    @Override // m9.i
    @Nullable
    public kotlin.time.b d() {
        Integer b10 = this.f21638e.b();
        if (b10 != null) {
            b.a aVar = kotlin.time.b.f61250b;
            return kotlin.time.b.g(c.s(b10.intValue(), DurationUnit.SECONDS));
        }
        return null;
    }
}
