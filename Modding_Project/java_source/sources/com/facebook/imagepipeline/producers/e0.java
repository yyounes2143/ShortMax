package com.facebook.imagepipeline.producers;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InternalProducerListener.kt */
@Metadata
/* loaded from: classes3.dex */
public class e0 implements e1 {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final f1 f15772a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final e1 f15773b;

    public e0(@Nullable f1 f1Var, @Nullable e1 e1Var) {
        this.f15772a = f1Var;
        this.f15773b = e1Var;
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void a(@NotNull c1 context, @Nullable String str, boolean z10) {
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        if (f1Var != null) {
            f1Var.i(context.getId(), str, z10);
        }
        e1 e1Var = this.f15773b;
        if (e1Var != null) {
            e1Var.a(context, str, z10);
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void b(@NotNull c1 context, @Nullable String str) {
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        if (f1Var != null) {
            f1Var.a(context.getId(), str);
        }
        e1 e1Var = this.f15773b;
        if (e1Var != null) {
            e1Var.b(context, str);
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void d(@NotNull c1 context, @Nullable String str, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        if (f1Var != null) {
            f1Var.h(context.getId(), str, map);
        }
        e1 e1Var = this.f15773b;
        if (e1Var != null) {
            e1Var.d(context, str, map);
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public boolean f(@NotNull c1 context, @Nullable String str) {
        Boolean bool;
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        Boolean bool2 = null;
        if (f1Var != null) {
            bool = Boolean.valueOf(f1Var.f(context.getId()));
        } else {
            bool = null;
        }
        if (!Intrinsics.areEqual(bool, Boolean.TRUE)) {
            e1 e1Var = this.f15773b;
            if (e1Var != null) {
                bool2 = Boolean.valueOf(e1Var.f(context, str));
            }
            bool = bool2;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void h(@NotNull c1 context, @Nullable String str, @Nullable String str2) {
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        if (f1Var != null) {
            f1Var.d(context.getId(), str, str2);
        }
        e1 e1Var = this.f15773b;
        if (e1Var != null) {
            e1Var.h(context, str, str2);
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void j(@NotNull c1 context, @Nullable String str, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        if (f1Var != null) {
            f1Var.g(context.getId(), str, map);
        }
        e1 e1Var = this.f15773b;
        if (e1Var != null) {
            e1Var.j(context, str, map);
        }
    }

    @Override // com.facebook.imagepipeline.producers.e1
    public void k(@NotNull c1 context, @Nullable String str, @Nullable Throwable th2, @Nullable Map<String, String> map) {
        Intrinsics.checkNotNullParameter(context, "context");
        f1 f1Var = this.f15772a;
        if (f1Var != null) {
            f1Var.c(context.getId(), str, th2, map);
        }
        e1 e1Var = this.f15773b;
        if (e1Var != null) {
            e1Var.k(context, str, th2, map);
        }
    }
}
