package com.moloco.sdk.acm;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
@Metadata
@SourceDebugExtension({"SMAP\nCountEvent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CountEvent.kt\ncom/moloco/sdk/acm/CountEvent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,73:1\n1#2:74\n*E\n"})
/* loaded from: classes6.dex */
public final class b {
    @NotNull
    public static final a Companion = new a(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final List<c> f31825a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f31826b;

    /* renamed from: c  reason: collision with root package name */
    private int f31827c;

    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public b(@NotNull String eventName) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        this.f31825a = new ArrayList();
        this.f31826b = eventName;
        this.f31827c = 1;
    }

    public final int a() {
        return this.f31827c;
    }

    @NotNull
    public List<c> b() {
        return this.f31825a;
    }

    @NotNull
    public String c() {
        return this.f31826b;
    }

    @NotNull
    public final b d(int i10) {
        if (i10 >= 0) {
            this.f31827c = i10;
            return this;
        }
        throw new IllegalArgumentException("Count cannot be negative");
    }

    @NotNull
    public b e(@NotNull String key, @NotNull String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        if (b().size() < 10 && key.length() <= 50 && value.length() <= 50) {
            b().add(new c(key, value));
        }
        return this;
    }
}
