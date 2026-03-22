package com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream;

import androidx.compose.runtime.internal.StabilityInferred;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.b;
import com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.h;
import java.io.File;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.ProduceKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@StabilityInferred(parameters = 0)
/* loaded from: classes6.dex */
public final class b implements com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public h f34194a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public final kt.b<h> f34195b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public Function1<? super File, Unit> f34196c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    public Function2<? super File, ? super h.d, Unit> f34197d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    public Function1<? super h.a, Unit> f34198e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public Function1<? super h.b, Unit> f34199f;

    @kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.MediaStreamListenerFlow$streamStatusFlow$1", f = "MediaStreamListenerFlow.kt", l = {30}, m = "invokeSuspend")
    /* loaded from: classes6.dex */
    public static final class a extends SuspendLambda implements Function2<jt.h<? super h>, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        public int f34200h;

        /* renamed from: i  reason: collision with root package name */
        public /* synthetic */ Object f34201i;

        public a(rs.c<? super a> cVar) {
            super(2, cVar);
        }

        public static final Unit j(b bVar) {
            bVar.f34196c = null;
            bVar.f34197d = null;
            bVar.f34198e = null;
            bVar.f34199f = null;
            return Unit.f60915a;
        }

        public static final Unit k(jt.h hVar, h.a aVar) {
            hVar.h(aVar);
            return Unit.f60915a;
        }

        public static final Unit n(jt.h hVar, h.b bVar) {
            hVar.h(bVar);
            return Unit.f60915a;
        }

        public static final Unit q(jt.h hVar, File file) {
            hVar.h(new h.c(file, new h.d(0L, 0L)));
            return Unit.f60915a;
        }

        public static final Unit s(jt.h hVar, File file, h.d dVar) {
            hVar.h(new h.c(file, dVar));
            return Unit.f60915a;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
            a aVar = new a(cVar);
            aVar.f34201i = obj;
            return aVar;
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: i */
        public final Object invoke(jt.h<? super h> hVar, rs.c<? super Unit> cVar) {
            return ((a) create(hVar, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f34200h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                final jt.h hVar = (jt.h) this.f34201i;
                b.this.f34196c = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.c
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return b.a.q(jt.h.this, (File) obj2);
                    }
                };
                b.this.f34197d = new Function2() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.d
                    @Override // kotlin.jvm.functions.Function2
                    public final Object invoke(Object obj2, Object obj3) {
                        return b.a.s(jt.h.this, (File) obj2, (h.d) obj3);
                    }
                };
                b.this.f34198e = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.e
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return b.a.k(jt.h.this, (h.a) obj2);
                    }
                };
                b.this.f34199f = new Function1() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.f
                    @Override // kotlin.jvm.functions.Function1
                    public final Object invoke(Object obj2) {
                        return b.a.n(jt.h.this, (h.b) obj2);
                    }
                };
                final b bVar = b.this;
                Function0 function0 = new Function0() { // from class: com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.g
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        return b.a.j(b.this);
                    }
                };
                this.f34200h = 1;
                if (ProduceKt.a(hVar, function0, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    public b(@NotNull h initialStatus) {
        Intrinsics.checkNotNullParameter(initialStatus, "initialStatus");
        this.f34194a = initialStatus;
        this.f34195b = kotlinx.coroutines.flow.c.g(new a(null));
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a
    public void a(@NotNull h.b error) {
        Intrinsics.checkNotNullParameter(error, "error");
        this.f34194a = error;
        Function1<? super h.b, Unit> function1 = this.f34199f;
        if (function1 != null) {
            function1.invoke(error);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a
    public void b(@NotNull h.a result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.f34194a = result;
        Function1<? super h.a, Unit> function1 = this.f34198e;
        if (function1 != null) {
            function1.invoke(result);
        }
    }

    @Override // com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.media.stream.a
    public void c(@NotNull File file, @NotNull h.d progress) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(progress, "progress");
        this.f34194a = new h.c(file, progress);
        Function2<? super File, ? super h.d, Unit> function2 = this.f34197d;
        if (function2 != null) {
            function2.invoke(file, progress);
        }
    }

    @NotNull
    public h d() {
        return this.f34194a;
    }

    @NotNull
    public final kt.b<h> g() {
        return this.f34195b;
    }
}
