package com.facebook.imagepipeline.producers;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: InternalRequestListener.kt */
@Metadata
/* loaded from: classes3.dex */
public final class f0 extends e0 implements a4.d {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final a4.e f15774c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final a4.d f15775d;

    public f0(@Nullable a4.e eVar, @Nullable a4.d dVar) {
        super(eVar, dVar);
        this.f15774c = eVar;
        this.f15775d = dVar;
    }

    @Override // a4.d
    public void c(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        a4.e eVar = this.f15774c;
        if (eVar != null) {
            eVar.e(producerContext.o(), producerContext.d(), producerContext.getId(), producerContext.u());
        }
        a4.d dVar = this.f15775d;
        if (dVar != null) {
            dVar.c(producerContext);
        }
    }

    @Override // a4.d
    public void e(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        a4.e eVar = this.f15774c;
        if (eVar != null) {
            eVar.b(producerContext.o(), producerContext.getId(), producerContext.u());
        }
        a4.d dVar = this.f15775d;
        if (dVar != null) {
            dVar.e(producerContext);
        }
    }

    @Override // a4.d
    public void g(@NotNull c1 producerContext) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        a4.e eVar = this.f15774c;
        if (eVar != null) {
            eVar.k(producerContext.getId());
        }
        a4.d dVar = this.f15775d;
        if (dVar != null) {
            dVar.g(producerContext);
        }
    }

    @Override // a4.d
    public void i(@NotNull c1 producerContext, @Nullable Throwable th2) {
        Intrinsics.checkNotNullParameter(producerContext, "producerContext");
        a4.e eVar = this.f15774c;
        if (eVar != null) {
            eVar.j(producerContext.o(), producerContext.getId(), th2, producerContext.u());
        }
        a4.d dVar = this.f15775d;
        if (dVar != null) {
            dVar.i(producerContext, th2);
        }
    }
}
