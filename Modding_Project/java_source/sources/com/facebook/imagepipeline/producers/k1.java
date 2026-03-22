package com.facebook.imagepipeline.producers;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: StatefulProducerRunnable.kt */
@Metadata
/* loaded from: classes3.dex */
public abstract class k1<T> extends i2.h<T> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<T> f15841b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final e1 f15842c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final c1 f15843d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final String f15844e;

    public k1(@NotNull n<T> consumer, @NotNull e1 producerListener, @NotNull c1 producerContext, @NotNull String producerName) {
        Intrinsics.checkNotNullParameter(consumer, "consumer");
        Intrinsics.checkNotNullParameter(producerListener, "producerListener");
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        Intrinsics.checkNotNullParameter(producerName, "producerName");
        this.f15841b = consumer;
        this.f15842c = producerListener;
        this.f15843d = producerContext;
        this.f15844e = producerName;
        producerListener.b(producerContext, producerName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // i2.h
    public void e() {
        Map<String, String> map;
        e1 e1Var = this.f15842c;
        c1 c1Var = this.f15843d;
        String str = this.f15844e;
        if (e1Var.f(c1Var, str)) {
            map = h();
        } else {
            map = null;
        }
        e1Var.d(c1Var, str, map);
        this.f15841b.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // i2.h
    public void f(@NotNull Exception e10) {
        Map<String, String> map;
        Intrinsics.checkNotNullParameter(e10, "e");
        e1 e1Var = this.f15842c;
        c1 c1Var = this.f15843d;
        String str = this.f15844e;
        if (e1Var.f(c1Var, str)) {
            map = i(e10);
        } else {
            map = null;
        }
        e1Var.k(c1Var, str, e10, map);
        this.f15841b.onFailure(e10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // i2.h
    public void g(@Nullable T t10) {
        Map<String, String> map;
        e1 e1Var = this.f15842c;
        c1 c1Var = this.f15843d;
        String str = this.f15844e;
        if (e1Var.f(c1Var, str)) {
            map = j(t10);
        } else {
            map = null;
        }
        e1Var.j(c1Var, str, map);
        this.f15841b.b(t10, 1);
    }

    @Nullable
    protected Map<String, String> h() {
        return null;
    }

    @Nullable
    protected Map<String, String> i(@Nullable Exception exc) {
        return null;
    }

    @Nullable
    protected Map<String, String> j(@Nullable T t10) {
        return null;
    }
}
