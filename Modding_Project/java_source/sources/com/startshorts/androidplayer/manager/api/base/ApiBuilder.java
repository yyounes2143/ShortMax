package com.startshorts.androidplayer.manager.api.base;

import android.content.Context;
import androidx.activity.ComponentActivity;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.api.base.ApiBuilder;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import fk.h0;
import hi.b;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ApiBuilder.kt */
@Metadata
@SourceDebugExtension({"SMAP\nApiBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiBuilder.kt\ncom/startshorts/androidplayer/manager/api/base/ApiBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,137:1\n1#2:138\n*E\n"})
/* loaded from: classes6.dex */
public final class ApiBuilder {
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    public static final a f41755f = new a(null);
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private Function0<? extends fi.a<?>> f41756a;

    /* renamed from: d  reason: collision with root package name */
    private boolean f41759d;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final ms.i f41757b = kotlin.c.b(new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.a
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            fi.a x10;
            x10 = ApiBuilder.x(ApiBuilder.this);
            return x10;
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private boolean f41758c = true;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private Function0<Unit> f41760e = new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.b
        @Override // kotlin.jvm.functions.Function0
        public final Object invoke() {
            Unit m10;
            m10 = ApiBuilder.m();
            return m10;
        }
    };

    /* compiled from: ApiBuilder.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* compiled from: ApiBuilder.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b implements b.InterfaceC0768b {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit c() {
            return Unit.f60915a;
        }

        @Override // hi.b.InterfaceC0768b
        public void a(boolean z10) {
            ApiBuilder.this.f41760e.invoke();
            ApiBuilder.this.f41760e = new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.h
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit c10;
                    c10 = ApiBuilder.b.c();
                    return c10;
                }
            };
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> Object A(Throwable th2) {
        String str;
        Logger logger = Logger.f41511a;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onResultFailed exception -> className=");
        String str2 = null;
        if (th2 != null) {
            str = th2.getClass().getSimpleName();
        } else {
            str = null;
        }
        sb2.append(str);
        sb2.append(",message=");
        if (th2 != null) {
            str2 = th2.getMessage();
        }
        sb2.append(str2);
        logger.e("ApiBuilder", sb2.toString());
        Result.a aVar = Result.f60901b;
        return Result.d(kotlin.f.a(r.f41814a.a(th2)));
    }

    private final void B() {
        h0.f51735a.e(new Runnable() { // from class: com.startshorts.androidplayer.manager.api.base.f
            @Override // java.lang.Runnable
            public final void run() {
                ApiBuilder.C(ApiBuilder.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(ApiBuilder apiBuilder) {
        fi.a<?> r10 = apiBuilder.r();
        if (r10 != null) {
            r10.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final <T> void D(Object obj) {
        Throwable g10;
        ComponentActivity componentActivity;
        if (this.f41758c && (g10 = Result.g(obj)) != null) {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            BaseActivity baseActivity = null;
            if (d10 != null) {
                componentActivity = (IDActivity) d10.get();
            } else {
                componentActivity = null;
            }
            if (componentActivity instanceof BaseActivity) {
                baseActivity = (BaseActivity) componentActivity;
            }
            if (baseActivity != null) {
                baseActivity.y(g10.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit m() {
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0051 A[Catch: Exception -> 0x002d, TryCatch #0 {Exception -> 0x002d, blocks: (B:12:0x0029, B:23:0x0049, B:25:0x0051, B:26:0x0056), top: B:33:0x0029 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0056 A[Catch: Exception -> 0x002d, TRY_LEAVE, TryCatch #0 {Exception -> 0x002d, blocks: (B:12:0x0029, B:23:0x0049, B:25:0x0051, B:26:0x0056), top: B:33:0x0029 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object p(kotlin.jvm.functions.Function1<? super rs.c<? super com.startshorts.androidplayer.bean.api.ServerResult<T>>, ? extends java.lang.Object> r5, rs.c<? super kotlin.Result<com.startshorts.androidplayer.bean.api.ServerResult<T>>> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.startshorts.androidplayer.manager.api.base.ApiBuilder$executeInner$1
            if (r0 == 0) goto L13
            r0 = r6
            com.startshorts.androidplayer.manager.api.base.ApiBuilder$executeInner$1 r0 = (com.startshorts.androidplayer.manager.api.base.ApiBuilder$executeInner$1) r0
            int r1 = r0.f41775k
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41775k = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder$executeInner$1 r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder$executeInner$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f41773i
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41775k
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r5 = r0.f41772h
            com.startshorts.androidplayer.manager.api.base.ApiBuilder r5 = (com.startshorts.androidplayer.manager.api.base.ApiBuilder) r5
            kotlin.f.b(r6)     // Catch: java.lang.Exception -> L2d
            goto L49
        L2d:
            r6 = move-exception
            goto L6b
        L2f:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L37:
            kotlin.f.b(r6)
            r4.B()
            r0.f41772h = r4     // Catch: java.lang.Exception -> L69
            r0.f41775k = r3     // Catch: java.lang.Exception -> L69
            java.lang.Object r6 = r5.invoke(r0)     // Catch: java.lang.Exception -> L69
            if (r6 != r1) goto L48
            return r1
        L48:
            r5 = r4
        L49:
            com.startshorts.androidplayer.bean.api.ServerResult r6 = (com.startshorts.androidplayer.bean.api.ServerResult) r6     // Catch: java.lang.Exception -> L2d
            int r0 = r6.getStatus()     // Catch: java.lang.Exception -> L2d
            if (r0 != 0) goto L56
            java.lang.Object r6 = kotlin.Result.d(r6)     // Catch: java.lang.Exception -> L2d
            goto L6f
        L56:
            com.startshorts.androidplayer.bean.exception.ServerException r0 = new com.startshorts.androidplayer.bean.exception.ServerException     // Catch: java.lang.Exception -> L2d
            int r1 = r6.getStatus()     // Catch: java.lang.Exception -> L2d
            java.lang.String r6 = r6.getMessage()     // Catch: java.lang.Exception -> L2d
            r2 = 0
            r0.<init>(r1, r6, r2)     // Catch: java.lang.Exception -> L2d
            java.lang.Object r6 = r5.A(r0)     // Catch: java.lang.Exception -> L2d
            goto L6f
        L69:
            r6 = move-exception
            r5 = r4
        L6b:
            java.lang.Object r6 = r5.A(r6)
        L6f:
            com.startshorts.androidplayer.manager.api.base.c r0 = new com.startshorts.androidplayer.manager.api.base.c
            r0.<init>()
            r5.f41760e = r0
            r5.s()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.api.base.ApiBuilder.p(kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit q() {
        return Unit.f60915a;
    }

    private final fi.a<?> r() {
        return (fi.a) this.f41757b.getValue();
    }

    private final void s() {
        h0.f51735a.e(new Runnable() { // from class: com.startshorts.androidplayer.manager.api.base.e
            @Override // java.lang.Runnable
            public final void run() {
                ApiBuilder.t(ApiBuilder.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void t(ApiBuilder apiBuilder) {
        fi.a<?> r10 = apiBuilder.r();
        if (r10 != null) {
            r10.dismiss();
        }
    }

    public static /* synthetic */ ApiBuilder v(ApiBuilder apiBuilder, Context context, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return apiBuilder.u(context, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final hi.b w(Context context, boolean z10, ApiBuilder apiBuilder) {
        hi.b bVar = new hi.b(context);
        bVar.setCancelable(z10);
        bVar.setCanceledOnTouchOutside(false);
        bVar.y(context.getString(R$string.common_waiting));
        bVar.x(new b());
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final fi.a x(ApiBuilder apiBuilder) {
        Function0<? extends fi.a<?>> function0 = apiBuilder.f41756a;
        if (function0 != null) {
            return function0.invoke();
        }
        return null;
    }

    public static /* synthetic */ ApiBuilder z(ApiBuilder apiBuilder, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        return apiBuilder.y(z10);
    }

    @NotNull
    public final ApiBuilder E(boolean z10) {
        this.f41758c = z10;
        return this;
    }

    @NotNull
    public final ApiBuilder n() {
        return E(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object o(@org.jetbrains.annotations.NotNull kotlin.jvm.functions.Function1<? super rs.c<? super com.startshorts.androidplayer.bean.api.ServerResult<T>>, ? extends java.lang.Object> r6, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Result<? extends T>> r7) {
        /*
            r5 = this;
            boolean r0 = r7 instanceof com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$1
            if (r0 == 0) goto L13
            r0 = r7
            com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$1 r0 = (com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$1) r0
            int r1 = r0.f41764j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f41764j = r1
            goto L18
        L13:
            com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$1 r0 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$1
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f41762h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f41764j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r7)
            goto L47
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L31:
            kotlin.f.b(r7)
            gt.c0 r7 = gt.q0.b()
            com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2 r2 = new com.startshorts.androidplayer.manager.api.base.ApiBuilder$execute$2
            r4 = 0
            r2.<init>(r5, r6, r4)
            r0.f41764j = r3
            java.lang.Object r7 = gt.e.g(r7, r2, r0)
            if (r7 != r1) goto L47
            return r1
        L47:
            kotlin.Result r7 = (kotlin.Result) r7
            java.lang.Object r6 = r7.n()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.startshorts.androidplayer.manager.api.base.ApiBuilder.o(kotlin.jvm.functions.Function1, rs.c):java.lang.Object");
    }

    @NotNull
    public final ApiBuilder u(@Nullable final Context context, final boolean z10) {
        if (context != null) {
            this.f41756a = new Function0() { // from class: com.startshorts.androidplayer.manager.api.base.d
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    hi.b w10;
                    w10 = ApiBuilder.w(context, z10, this);
                    return w10;
                }
            };
        }
        return this;
    }

    @NotNull
    public final ApiBuilder y(boolean z10) {
        this.f41759d = z10;
        return this;
    }
}
