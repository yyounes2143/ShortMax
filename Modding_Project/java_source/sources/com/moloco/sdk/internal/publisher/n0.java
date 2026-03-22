package com.moloco.sdk.internal.publisher;

import androidx.annotation.VisibleForTesting;
import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.publisher.AdShowListener;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
@VisibleForTesting(otherwise = 2)
/* loaded from: classes6.dex */
public final class n0<T extends AdShowListener> {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> f32708a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    public com.moloco.sdk.internal.ortb.model.r f32709b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public e0 f32710c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public kotlinx.coroutines.r f32711d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public t0 f32712e;

    public n0(@Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> uVar, @Nullable com.moloco.sdk.internal.ortb.model.r rVar, @Nullable e0 e0Var, @Nullable kotlinx.coroutines.r rVar2, @Nullable t0 t0Var) {
        this.f32708a = uVar;
        this.f32709b = rVar;
        this.f32710c = e0Var;
        this.f32711d = rVar2;
        this.f32712e = t0Var;
    }

    @Nullable
    public final com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> a() {
        return this.f32708a;
    }

    public final void b(@Nullable com.moloco.sdk.internal.ortb.model.r rVar) {
        this.f32709b = rVar;
    }

    public final void c(@Nullable e0 e0Var) {
        this.f32710c = e0Var;
    }

    public final void d(@Nullable t0 t0Var) {
        this.f32712e = t0Var;
    }

    public final void e(@Nullable com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u<?, ?> uVar) {
        this.f32708a = uVar;
    }

    public final void f(@Nullable kotlinx.coroutines.r rVar) {
        this.f32711d = rVar;
    }

    @Nullable
    public final kotlinx.coroutines.r g() {
        return this.f32711d;
    }

    @Nullable
    public final e0 h() {
        return this.f32710c;
    }

    @Nullable
    public final t0 i() {
        return this.f32712e;
    }

    @Nullable
    public final com.moloco.sdk.internal.ortb.model.r j() {
        return this.f32709b;
    }

    public /* synthetic */ n0(com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.u uVar, com.moloco.sdk.internal.ortb.model.r rVar, e0 e0Var, kotlinx.coroutines.r rVar2, t0 t0Var, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : uVar, (i10 & 2) != 0 ? null : rVar, (i10 & 4) != 0 ? null : e0Var, (i10 & 8) != 0 ? null : rVar2, (i10 & 16) != 0 ? null : t0Var);
    }
}
