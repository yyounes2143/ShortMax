package com.moloco.sdk.internal.publisher;

import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.C;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
/* loaded from: classes6.dex */
public final class f0<L extends com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.e0> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public C<L> f32639a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public com.moloco.sdk.internal.ortb.model.r f32640b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public e0 f32641c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public kotlinx.coroutines.r f32642d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public String f32643e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public String f32644f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f32645g;

    public f0(@Nullable C<L> c10, @Nullable com.moloco.sdk.internal.ortb.model.r rVar, @Nullable e0 e0Var, @Nullable kotlinx.coroutines.r rVar2, @Nullable String str, @Nullable String str2, boolean z10) {
        this.f32639a = c10;
        this.f32640b = rVar;
        this.f32641c = e0Var;
        this.f32642d = rVar2;
        this.f32643e = str;
        this.f32644f = str2;
        this.f32645g = z10;
    }

    @Nullable
    public final kotlinx.coroutines.r a() {
        return this.f32642d;
    }

    public final void b(@Nullable com.moloco.sdk.internal.ortb.model.r rVar) {
        this.f32640b = rVar;
    }

    public final void c(@Nullable e0 e0Var) {
        this.f32641c = e0Var;
    }

    public final void d(@Nullable C<L> c10) {
        this.f32639a = c10;
    }

    public final void e(@Nullable String str) {
        this.f32644f = str;
    }

    public final void f(@Nullable kotlinx.coroutines.r rVar) {
        this.f32642d = rVar;
    }

    public final void g(boolean z10) {
        this.f32645g = z10;
    }

    @Nullable
    public final e0 h() {
        return this.f32641c;
    }

    public final void i(@Nullable String str) {
        this.f32643e = str;
    }

    @Nullable
    public final String j() {
        return this.f32644f;
    }

    @Nullable
    public final String k() {
        return this.f32643e;
    }

    @Nullable
    public final com.moloco.sdk.internal.ortb.model.r l() {
        return this.f32640b;
    }

    @Nullable
    public final C<L> m() {
        return this.f32639a;
    }

    public final boolean n() {
        return this.f32645g;
    }

    public /* synthetic */ f0(C c10, com.moloco.sdk.internal.ortb.model.r rVar, e0 e0Var, kotlinx.coroutines.r rVar2, String str, String str2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : c10, (i10 & 2) != 0 ? null : rVar, (i10 & 4) != 0 ? null : e0Var, (i10 & 8) != 0 ? null : rVar2, (i10 & 16) != 0 ? null : str, (i10 & 32) == 0 ? str2 : null, (i10 & 64) != 0 ? false : z10);
    }
}
