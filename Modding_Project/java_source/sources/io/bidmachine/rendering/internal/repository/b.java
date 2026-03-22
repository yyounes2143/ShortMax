package io.bidmachine.rendering.internal.repository;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.annotation.VisibleForTesting;
import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import io.bidmachine.rendering.model.MediaSource;
import io.bidmachine.rendering.utils.NetworkRequest;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import lq.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rq.o0;
import rq.t;
import yq.r;
import yq.s;
/*  JADX ERROR: JadxRuntimeException in pass: ClassModifier
    jadx.core.utils.exceptions.JadxRuntimeException: Not class type: T
    	at jadx.core.dex.info.ClassInfo.checkClassType(ClassInfo.java:53)
    	at jadx.core.dex.info.ClassInfo.fromType(ClassInfo.java:31)
    	at jadx.core.dex.visitors.ClassModifier.removeSyntheticFields(ClassModifier.java:83)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:61)
    	at jadx.core.dex.visitors.ClassModifier.visit(ClassModifier.java:55)
    */
@Metadata
/* loaded from: classes8.dex */
public final class b implements lq.a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final g0 f58399a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.rendering.internal.h f58400b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f58401c;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a extends NetworkRequest.d<Bitmap> {
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final BitmapFactory.Options f58402c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(@NotNull Context context, @NotNull File file, @NotNull BitmapFactory.Options options) {
            super(context, file);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(file, "file");
            Intrinsics.checkNotNullParameter(options, "options");
            this.f58402c = options;
        }

        @Override // io.bidmachine.rendering.utils.NetworkRequest.g
        @Nullable
        /* renamed from: c */
        public Bitmap b(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return yq.e.c(file, this.f58402c);
        }
    }

    @Metadata
    @VisibleForTesting
    /* renamed from: io.bidmachine.rendering.internal.repository.b$b  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public static abstract class AbstractC0818b<T> implements NetworkRequest.e<T> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final a.InterfaceC0869a<T> f58403a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final g0 f58404b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private final io.bidmachine.rendering.internal.h f58405c;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$NetworkRequestListener$onError$1", f = "RepositoryImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: io.bidmachine.rendering.internal.repository.b$b$a */
        /* loaded from: classes8.dex */
        public static final class a extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58406h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ AbstractC0818b<T> f58407i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ t f58408j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(AbstractC0818b<T> abstractC0818b, t tVar, rs.c<? super a> cVar) {
                super(2, cVar);
                this.f58407i = abstractC0818b;
                this.f58408j = tVar;
            }

            @Override // kotlin.jvm.functions.Function2
            @Nullable
            /* renamed from: a */
            public final Object invoke(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new a(this.f58407i, this.f58408j, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58406h == 0) {
                    kotlin.f.b(obj);
                    ((AbstractC0818b) this.f58407i).f58403a.a(this.f58408j);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        @Metadata
        @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$NetworkRequestListener$onSuccess$1", f = "RepositoryImpl.kt", l = {}, m = "invokeSuspend")
        /* renamed from: io.bidmachine.rendering.internal.repository.b$b$b  reason: collision with other inner class name */
        /* loaded from: classes8.dex */
        static final class C0819b extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

            /* renamed from: h  reason: collision with root package name */
            int f58409h;

            /* renamed from: i  reason: collision with root package name */
            final /* synthetic */ AbstractC0818b<T> f58410i;

            /* renamed from: j  reason: collision with root package name */
            final /* synthetic */ T f58411j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0819b(AbstractC0818b<T> abstractC0818b, T t10, rs.c<? super C0819b> cVar) {
                super(2, cVar);
                this.f58410i = abstractC0818b;
                this.f58411j = t10;
            }

            @Nullable
            public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
                return ((C0819b) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @NotNull
            public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
                return new C0819b(this.f58410i, this.f58411j, cVar);
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
                return a(g0Var, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            @Nullable
            public final Object invokeSuspend(@NotNull Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f58409h == 0) {
                    kotlin.f.b(obj);
                    ((AbstractC0818b) this.f58410i).f58403a.onSuccess(this.f58411j);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        public AbstractC0818b(@NotNull a.InterfaceC0869a<T> resultCallback, @NotNull g0 coroutineScope, @NotNull io.bidmachine.rendering.internal.h coroutineDispatchers) {
            Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
            Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
            Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
            this.f58403a = resultCallback;
            this.f58404b = coroutineScope;
            this.f58405c = coroutineDispatchers;
        }

        @Override // io.bidmachine.rendering.utils.NetworkRequest.e
        public void a(@NotNull t error) {
            Intrinsics.checkNotNullParameter(error, "error");
            gt.g.d(this.f58404b, this.f58405c.g(), null, new a(this, error, null), 2, null);
        }

        @NotNull
        public abstract t c();

        @Override // io.bidmachine.rendering.utils.NetworkRequest.e
        public void onSuccess(@Nullable T t10) {
            if (t10 != null) {
                gt.g.d(this.f58404b, this.f58405c.g(), null, new C0819b(this, t10, null), 2, null);
            } else {
                a(c());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c extends NetworkRequest.d<Uri> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(@NotNull Context context, @NotNull File file) {
            super(context, file);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(file, "file");
        }

        @Override // io.bidmachine.rendering.utils.NetworkRequest.g
        public /* bridge */ /* synthetic */ Object b(File file) {
            return c(file);
        }

        @Nullable
        public Uri c(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            if (sq.e.g(file)) {
                return null;
            }
            return sq.e.j(file);
        }
    }

    @Metadata
    /* loaded from: classes8.dex */
    public /* synthetic */ class d {

        /* renamed from: a  reason: collision with root package name */
        public static final /* synthetic */ int[] f58412a;

        static {
            int[] iArr = new int[MediaSource.DeliveryType.values().length];
            try {
                iArr[MediaSource.DeliveryType.PRELOAD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MediaSource.DeliveryType.STREAM.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f58412a = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$callError$2", f = "RepositoryImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class e extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58413h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<T> f58414i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ t f58415j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(a.InterfaceC0869a<T> interfaceC0869a, t tVar, rs.c<? super e> cVar) {
            super(2, cVar);
            this.f58414i = interfaceC0869a;
            this.f58415j = tVar;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((e) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new e(this.f58414i, this.f58415j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58413h == 0) {
                kotlin.f.b(obj);
                this.f58414i.a(this.f58415j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$callSuccess$2", f = "RepositoryImpl.kt", l = {}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class f extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58416h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<T> f58417i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ T f58418j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(a.InterfaceC0869a<T> interfaceC0869a, T t10, rs.c<? super f> cVar) {
            super(2, cVar);
            this.f58417i = interfaceC0869a;
            this.f58418j = t10;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((f) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new f(this.f58417i, this.f58418j, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            kotlin.coroutines.intrinsics.a.f();
            if (this.f58416h == 0) {
                kotlin.f.b(obj);
                this.f58417i.onSuccess(this.f58418j);
                return Unit.f60915a;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getImage$1", f = "RepositoryImpl.kt", l = {37}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class g extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58419h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ b f58420i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ MediaSource f58421j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<Bitmap> f58422k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        g(b bVar, MediaSource mediaSource, a.InterfaceC0869a<Bitmap> interfaceC0869a, rs.c<? super g> cVar) {
            super(2, cVar);
            this.f58420i = bVar;
            this.f58421j = mediaSource;
            this.f58422k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((g) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new g(this.f58420i, this.f58421j, this.f58422k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58419h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                b bVar = this.f58420i;
                MediaSource mediaSource = this.f58421j;
                a.InterfaceC0869a<Bitmap> interfaceC0869a = this.f58422k;
                this.f58419h = 1;
                if (bVar.j(mediaSource, interfaceC0869a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getImageAsync$2", f = "RepositoryImpl.kt", l = {49, 50}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class h extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58423h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ MediaSource f58424i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ b f58425j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<Bitmap> f58426k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        h(MediaSource mediaSource, b bVar, a.InterfaceC0869a<Bitmap> interfaceC0869a, rs.c<? super h> cVar) {
            super(2, cVar);
            this.f58424i = mediaSource;
            this.f58425j = bVar;
            this.f58426k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((h) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new h(this.f58424i, this.f58425j, this.f58426k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58423h;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                BitmapFactory.Options a10 = yq.e.a();
                a10.inJustDecodeBounds = false;
                MediaSource mediaSource = this.f58424i;
                if (mediaSource instanceof o0) {
                    a.InterfaceC0869a<Bitmap> interfaceC0869a = this.f58426k;
                    this.f58423h = 1;
                    if (this.f58425j.o((o0) mediaSource, a10, interfaceC0869a, this) == f10) {
                        return f10;
                    }
                } else if (mediaSource instanceof rq.h) {
                    a.InterfaceC0869a<Bitmap> interfaceC0869a2 = this.f58426k;
                    this.f58423h = 2;
                    if (this.f58425j.n((rq.h) mediaSource, a10, interfaceC0869a2, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getString$1", f = "RepositoryImpl.kt", l = {174}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class i extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58427h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ b f58428i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ MediaSource f58429j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<String> f58430k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        i(b bVar, MediaSource mediaSource, a.InterfaceC0869a<String> interfaceC0869a, rs.c<? super i> cVar) {
            super(2, cVar);
            this.f58428i = bVar;
            this.f58429j = mediaSource;
            this.f58430k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((i) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new i(this.f58428i, this.f58429j, this.f58430k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58427h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                b bVar = this.f58428i;
                MediaSource mediaSource = this.f58429j;
                a.InterfaceC0869a<String> interfaceC0869a = this.f58430k;
                this.f58427h = 1;
                if (bVar.s(mediaSource, interfaceC0869a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getStringAsync$2", f = "RepositoryImpl.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_LOOP_PERFER_VIDEO, MediaPlayer.MEDIA_PLAYER_OPTION_SET_ORIGINAL_RETRY}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class j extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58431h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ MediaSource f58432i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ b f58433j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<String> f58434k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        j(MediaSource mediaSource, b bVar, a.InterfaceC0869a<String> interfaceC0869a, rs.c<? super j> cVar) {
            super(2, cVar);
            this.f58432i = mediaSource;
            this.f58433j = bVar;
            this.f58434k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((j) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new j(this.f58432i, this.f58433j, this.f58434k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58431h;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                MediaSource mediaSource = this.f58432i;
                if (mediaSource instanceof o0) {
                    this.f58433j.q(((o0) mediaSource).b(), new NetworkRequest.h(), this.f58434k, new t("Uri is null"));
                } else if (mediaSource instanceof rq.h) {
                    String f11 = r.f(((rq.h) mediaSource).b(), 0, 2, null);
                    if (f11 != null) {
                        b bVar = this.f58433j;
                        a.InterfaceC0869a<String> interfaceC0869a = this.f58434k;
                        this.f58431h = 1;
                        if (bVar.l(interfaceC0869a, f11, this) == f10) {
                            return f10;
                        }
                    } else {
                        b bVar2 = this.f58433j;
                        a.InterfaceC0869a<String> interfaceC0869a2 = this.f58434k;
                        t tVar = new t("Can't decode string from base64");
                        this.f58431h = 2;
                        if (bVar2.m(interfaceC0869a2, tVar, this) == f10) {
                            return f10;
                        }
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getVideo$1", f = "RepositoryImpl.kt", l = {101}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    static final class k extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58435h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ b f58436i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ MediaSource f58437j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<Uri> f58438k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        k(b bVar, MediaSource mediaSource, a.InterfaceC0869a<Uri> interfaceC0869a, rs.c<? super k> cVar) {
            super(2, cVar);
            this.f58436i = bVar;
            this.f58437j = mediaSource;
            this.f58438k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((k) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new k(this.f58436i, this.f58437j, this.f58438k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58435h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                b bVar = this.f58436i;
                MediaSource mediaSource = this.f58437j;
                a.InterfaceC0869a<Uri> interfaceC0869a = this.f58438k;
                this.f58435h = 1;
                if (bVar.u(mediaSource, interfaceC0869a, this) == f10) {
                    return f10;
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getVideoAsync$2", f = "RepositoryImpl.kt", l = {110}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class l extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58439h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ MediaSource f58440i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ b f58441j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<Uri> f58442k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        l(MediaSource mediaSource, b bVar, a.InterfaceC0869a<Uri> interfaceC0869a, rs.c<? super l> cVar) {
            super(2, cVar);
            this.f58440i = mediaSource;
            this.f58441j = bVar;
            this.f58442k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((l) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new l(this.f58440i, this.f58441j, this.f58442k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58439h;
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                MediaSource mediaSource = this.f58440i;
                if (mediaSource instanceof o0) {
                    a.InterfaceC0869a<Uri> interfaceC0869a = this.f58442k;
                    this.f58439h = 1;
                    if (this.f58441j.p((o0) mediaSource, interfaceC0869a, this) == f10) {
                        return f10;
                    }
                } else {
                    a.InterfaceC0869a<Uri> interfaceC0869a2 = this.f58442k;
                    interfaceC0869a2.a(new t("Unsupported media source type: " + this.f58440i));
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.bidmachine.rendering.internal.repository.RepositoryImpl$getVideoFromStream$2", f = "RepositoryImpl.kt", l = {156, 158}, m = "invokeSuspend")
    /* loaded from: classes8.dex */
    public static final class m extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58443h;

        /* renamed from: i  reason: collision with root package name */
        final /* synthetic */ b f58444i;

        /* renamed from: j  reason: collision with root package name */
        final /* synthetic */ String f58445j;

        /* renamed from: k  reason: collision with root package name */
        final /* synthetic */ a.InterfaceC0869a<Uri> f58446k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        m(b bVar, String str, a.InterfaceC0869a<Uri> interfaceC0869a, rs.c<? super m> cVar) {
            super(2, cVar);
            this.f58444i = bVar;
            this.f58445j = str;
            this.f58446k = interfaceC0869a;
        }

        @Nullable
        public final Object a(@NotNull g0 g0Var, @Nullable rs.c<? super Unit> cVar) {
            return ((m) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @NotNull
        public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
            return new m(this.f58444i, this.f58445j, this.f58446k, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
            return a(g0Var, cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f58443h;
            if (i10 != 0) {
                if (i10 != 1 && i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                Uri r10 = this.f58444i.r(this.f58445j);
                if (r10 != null) {
                    b bVar = this.f58444i;
                    a.InterfaceC0869a<Uri> interfaceC0869a = this.f58446k;
                    this.f58443h = 1;
                    if (bVar.l(interfaceC0869a, r10, this) == f10) {
                        return f10;
                    }
                } else {
                    b bVar2 = this.f58444i;
                    a.InterfaceC0869a<Uri> interfaceC0869a2 = this.f58446k;
                    t tVar = new t("Can't parse video stream url - " + this.f58445j);
                    this.f58443h = 2;
                    if (bVar2.m(interfaceC0869a2, tVar, this) == f10) {
                        return f10;
                    }
                }
            }
            return Unit.f60915a;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class n<T> extends AbstractC0818b<T> {

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ t f58447d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        n(a.InterfaceC0869a<T> interfaceC0869a, t tVar, g0 g0Var, io.bidmachine.rendering.internal.h hVar) {
            super(interfaceC0869a, g0Var, hVar);
            this.f58447d = tVar;
        }

        @Override // io.bidmachine.rendering.internal.repository.b.AbstractC0818b
        @NotNull
        public t c() {
            return this.f58447d;
        }
    }

    public b(@NotNull Context context, @NotNull g0 coroutineScope, @NotNull io.bidmachine.rendering.internal.h coroutineDispatchers) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(coroutineScope, "coroutineScope");
        Intrinsics.checkNotNullParameter(coroutineDispatchers, "coroutineDispatchers");
        this.f58399a = coroutineScope;
        this.f58400b = coroutineDispatchers;
        this.f58401c = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Object l(a.InterfaceC0869a<T> interfaceC0869a, T t10, rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f58400b.g(), new f(interfaceC0869a, t10, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Object m(a.InterfaceC0869a<T> interfaceC0869a, t tVar, rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f58400b.g(), new e(interfaceC0869a, tVar, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @Override // lq.a
    public void a(@NotNull MediaSource mediaSource, @NotNull a.InterfaceC0869a<String> resultCallback) {
        Intrinsics.checkNotNullParameter(mediaSource, "mediaSource");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        gt.g.d(this.f58399a, null, null, new i(this, mediaSource, resultCallback, null), 3, null);
    }

    @Override // lq.a
    public void b(@NotNull MediaSource mediaSource, @NotNull a.InterfaceC0869a<Bitmap> resultCallback) {
        Intrinsics.checkNotNullParameter(mediaSource, "mediaSource");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        gt.g.d(this.f58399a, null, null, new g(this, mediaSource, resultCallback, null), 3, null);
    }

    @Override // lq.a
    public void c(@NotNull MediaSource mediaSource, @NotNull a.InterfaceC0869a<Uri> resultCallback) {
        Intrinsics.checkNotNullParameter(mediaSource, "mediaSource");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        gt.g.d(this.f58399a, null, null, new k(this, mediaSource, resultCallback, null), 3, null);
    }

    @VisibleForTesting
    @Nullable
    public final Bitmap d(@NotNull String base64, @NotNull BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(base64, "base64");
        Intrinsics.checkNotNullParameter(options, "options");
        byte[] f10 = s.f(base64, 0, 1, null);
        if (f10 == null) {
            return null;
        }
        return yq.e.b(f10, options);
    }

    @VisibleForTesting
    @NotNull
    public final NetworkRequest.d<Uri> e(@NotNull Context context, @NotNull File file) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        return new c(context, file);
    }

    @VisibleForTesting
    @NotNull
    public final NetworkRequest.d<Bitmap> f(@NotNull Context context, @NotNull File file, @NotNull BitmapFactory.Options options) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(options, "options");
        return new a(context, file, options);
    }

    @VisibleForTesting
    @Nullable
    public final File g(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return sq.e.f(this.f58401c, url);
    }

    @VisibleForTesting
    @Nullable
    public final Object j(@NotNull MediaSource mediaSource, @NotNull a.InterfaceC0869a<Bitmap> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f58400b.e(), new h(mediaSource, this, interfaceC0869a, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @VisibleForTesting
    @Nullable
    public final Object k(@NotNull String str, @NotNull a.InterfaceC0869a<Uri> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        File g10 = g(str);
        if (g10 == null) {
            Object m10 = m(interfaceC0869a, new t("Can't create file for video by url (" + str + ')'), cVar);
            if (m10 == kotlin.coroutines.intrinsics.a.f()) {
                return m10;
            }
            return Unit.f60915a;
        }
        Context applicationContext = this.f58401c;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        NetworkRequest.d<Uri> e10 = e(applicationContext, g10);
        Uri b10 = e10.b(g10);
        if (b10 != null) {
            Object l10 = l(interfaceC0869a, b10, cVar);
            if (l10 == kotlin.coroutines.intrinsics.a.f()) {
                return l10;
            }
            return Unit.f60915a;
        }
        q(str, e10, interfaceC0869a, new t("Uri is null"));
        return Unit.f60915a;
    }

    @VisibleForTesting
    @Nullable
    public final Object n(@NotNull rq.h hVar, @NotNull BitmapFactory.Options options, @NotNull a.InterfaceC0869a<Bitmap> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        Bitmap d10 = d(hVar.b(), options);
        if (d10 != null) {
            Object l10 = l(interfaceC0869a, d10, cVar);
            if (l10 == kotlin.coroutines.intrinsics.a.f()) {
                return l10;
            }
            return Unit.f60915a;
        }
        Object m10 = m(interfaceC0869a, new t("Can't decode image from base64"), cVar);
        if (m10 == kotlin.coroutines.intrinsics.a.f()) {
            return m10;
        }
        return Unit.f60915a;
    }

    @VisibleForTesting
    @Nullable
    public final Object o(@NotNull o0 o0Var, @NotNull BitmapFactory.Options options, @NotNull a.InterfaceC0869a<Bitmap> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        String b10 = o0Var.b();
        File g10 = g(b10);
        if (g10 == null) {
            Object m10 = m(interfaceC0869a, new t("Can't create file for image by url (" + b10 + ')'), cVar);
            if (m10 == kotlin.coroutines.intrinsics.a.f()) {
                return m10;
            }
            return Unit.f60915a;
        }
        Context applicationContext = this.f58401c;
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        NetworkRequest.d<Bitmap> f10 = f(applicationContext, g10, options);
        Bitmap b11 = f10.b(g10);
        if (b11 != null) {
            Object l10 = l(interfaceC0869a, b11, cVar);
            if (l10 == kotlin.coroutines.intrinsics.a.f()) {
                return l10;
            }
            return Unit.f60915a;
        }
        q(b10, f10, interfaceC0869a, new t("Failed to load image from url (" + b10 + ')'));
        return Unit.f60915a;
    }

    @VisibleForTesting
    @Nullable
    public final Object p(@NotNull o0 o0Var, @NotNull a.InterfaceC0869a<Uri> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        String b10 = o0Var.b();
        int i10 = d.f58412a[o0Var.a().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                return Unit.f60915a;
            }
            Object t10 = t(b10, interfaceC0869a, cVar);
            if (t10 == kotlin.coroutines.intrinsics.a.f()) {
                return t10;
            }
            return Unit.f60915a;
        }
        Object k10 = k(b10, interfaceC0869a, cVar);
        if (k10 == kotlin.coroutines.intrinsics.a.f()) {
            return k10;
        }
        return Unit.f60915a;
    }

    @VisibleForTesting
    public final <T> void q(@NotNull String url, @NotNull NetworkRequest.f<T> processor, @NotNull a.InterfaceC0869a<T> resultCallback, @NotNull t error) {
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(processor, "processor");
        Intrinsics.checkNotNullParameter(resultCallback, "resultCallback");
        Intrinsics.checkNotNullParameter(error, "error");
        new NetworkRequest.a(url, NetworkRequest.Method.Get).e(processor).d(new n(resultCallback, error, this.f58399a, this.f58400b)).c();
    }

    @VisibleForTesting
    @Nullable
    public final Uri r(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            return r.j(url);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Nullable
    public final Object s(@NotNull MediaSource mediaSource, @NotNull a.InterfaceC0869a<String> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f58400b.e(), new j(mediaSource, this, interfaceC0869a, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @VisibleForTesting
    @Nullable
    public final Object t(@NotNull String str, @NotNull a.InterfaceC0869a<Uri> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f58400b.e(), new m(this, str, interfaceC0869a, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }

    @VisibleForTesting
    @Nullable
    public final Object u(@NotNull MediaSource mediaSource, @NotNull a.InterfaceC0869a<Uri> interfaceC0869a, @NotNull rs.c<? super Unit> cVar) {
        Object g10 = gt.e.g(this.f58400b.e(), new l(mediaSource, this, interfaceC0869a, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
