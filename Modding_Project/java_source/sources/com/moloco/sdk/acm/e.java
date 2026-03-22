package com.moloco.sdk.acm;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@Metadata
@SourceDebugExtension({"SMAP\nTimerEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimerEvent.kt\ncom/moloco/sdk/acm/TimerEvent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n1#2:105\n*E\n"})
/* loaded from: classes6.dex */
public final class e {
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final com.moloco.sdk.acm.services.d f31868a;

    /* renamed from: b  reason: collision with root package name */
    private long f31869b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final List<c> f31870c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final String f31871d;

    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final e a(@NotNull String eventName) {
            Intrinsics.checkNotNullParameter(eventName, "eventName");
            return new e(eventName, new com.moloco.sdk.acm.services.d(new com.moloco.sdk.acm.services.g()), null);
        }

        private a() {
        }
    }

    public /* synthetic */ e(String str, com.moloco.sdk.acm.services.d dVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, dVar);
    }

    @NotNull
    public List<c> a() {
        return this.f31870c;
    }

    @NotNull
    public String b() {
        return this.f31871d;
    }

    public final long c() {
        return this.f31869b;
    }

    public final void d() {
        this.f31868a.b();
    }

    public final void e() {
        if (this.f31869b == 0) {
            this.f31869b = this.f31868a.a();
        }
    }

    @NotNull
    public e f(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (a().size() < 10 && key.length() <= 50 && value.length() <= 50) {
            a().add(new c(key, value));
        }
        return this;
    }

    @NotNull
    public final e g(long j10) {
        if (j10 >= 0) {
            this.f31869b = j10;
            return this;
        }
        throw new IllegalArgumentException("Count cannot be negative");
    }

    private e(String str, com.moloco.sdk.acm.services.d dVar) {
        this.f31868a = dVar;
        this.f31870c = new ArrayList();
        this.f31871d = str;
    }
}
