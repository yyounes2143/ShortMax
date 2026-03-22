package io.bidmachine.analytics.internal;

import android.util.Base64;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import io.bidmachine.analytics.BidMachineAnalytics;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.Flushable;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* loaded from: classes7.dex */
public abstract class Y {

    /* renamed from: e  reason: collision with root package name */
    public static final a f54047e = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final o0 f54048a;

    /* renamed from: b  reason: collision with root package name */
    private final String f54049b;

    /* renamed from: c  reason: collision with root package name */
    private final p0 f54050c;

    /* renamed from: d  reason: collision with root package name */
    private final C3323s f54051d;

    /* loaded from: classes7.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class b extends ContinuationImpl {

        /* renamed from: a  reason: collision with root package name */
        /* synthetic */ Object f54052a;

        /* renamed from: c  reason: collision with root package name */
        int f54054c;

        b(rs.c cVar) {
            super(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.f54052a = obj;
            this.f54054c |= Integer.MIN_VALUE;
            Object a10 = Y.this.a(this);
            if (a10 == kotlin.coroutines.intrinsics.a.f()) {
                return a10;
            }
            return Result.b(a10);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static final class c extends SuspendLambda implements Function2 {

        /* renamed from: a  reason: collision with root package name */
        int f54055a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes7.dex */
        public static final class a extends SuspendLambda implements Function2 {

            /* renamed from: a  reason: collision with root package name */
            int f54057a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ Y f54058b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(Y y10, rs.c cVar) {
                super(2, cVar);
                this.f54058b = y10;
            }

            @Override // kotlin.jvm.functions.Function2
            /* renamed from: a */
            public final Object invoke(gt.g0 g0Var, rs.c cVar) {
                return ((a) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final rs.c create(Object obj, rs.c cVar) {
                return new a(this.f54058b, cVar);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                kotlin.coroutines.intrinsics.a.f();
                if (this.f54057a == 0) {
                    kotlin.f.b(obj);
                    Y y10 = this.f54058b;
                    return y10.a(y10.f54051d, this.f54058b.b());
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        }

        c(rs.c cVar) {
            super(2, cVar);
        }

        @Override // kotlin.jvm.functions.Function2
        /* renamed from: a */
        public final Object invoke(gt.g0 g0Var, rs.c cVar) {
            return ((c) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final rs.c create(Object obj, rs.c cVar) {
            return new c(cVar);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object d10;
            Object f10 = kotlin.coroutines.intrinsics.a.f();
            int i10 = this.f54055a;
            try {
                if (i10 != 0) {
                    if (i10 == 1) {
                        kotlin.f.b(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    kotlin.f.b(obj);
                    if (Y.this.f54051d == null) {
                        Result.a aVar = Result.f60901b;
                        return Result.b(Result.d(Y.this.a()));
                    }
                    gt.c0 b10 = Y.this.f54050c.b();
                    a aVar2 = new a(Y.this, null);
                    this.f54055a = 1;
                    obj = gt.e.g(b10, aVar2, this);
                    if (obj == f10) {
                        return f10;
                    }
                }
                byte[] bArr = (byte[]) obj;
                Y y10 = Y.this;
                y10.a(y10.f54049b, bArr);
                Result.a aVar3 = Result.f60901b;
                d10 = Result.d(Y.this.a());
            } catch (Throwable th2) {
                Result.a aVar4 = Result.f60901b;
                d10 = Result.d(kotlin.f.a(th2));
            }
            return Result.b(d10);
        }
    }

    public Y(o0 o0Var, String str, p0 p0Var, C3323s c3323s) {
        this.f54048a = o0Var;
        this.f54049b = str;
        this.f54050c = p0Var;
        this.f54051d = c3323s;
    }

    public abstract Y a();

    public abstract byte[] b();

    private final int b(URLConnection uRLConnection) {
        if (uRLConnection instanceof HttpURLConnection) {
            return ((HttpURLConnection) uRLConnection).getResponseCode();
        }
        return -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(rs.c r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof io.bidmachine.analytics.internal.Y.b
            if (r0 == 0) goto L13
            r0 = r6
            io.bidmachine.analytics.internal.Y$b r0 = (io.bidmachine.analytics.internal.Y.b) r0
            int r1 = r0.f54054c
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f54054c = r1
            goto L18
        L13:
            io.bidmachine.analytics.internal.Y$b r0 = new io.bidmachine.analytics.internal.Y$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f54052a
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f54054c
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L49
        L29:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L31:
            kotlin.f.b(r6)
            io.bidmachine.analytics.internal.p0 r6 = r5.f54050c
            gt.c0 r6 = r6.c()
            io.bidmachine.analytics.internal.Y$c r2 = new io.bidmachine.analytics.internal.Y$c
            r4 = 0
            r2.<init>(r4)
            r0.f54054c = r3
            java.lang.Object r6 = gt.e.g(r6, r2, r0)
            if (r6 != r1) goto L49
            return r1
        L49:
            kotlin.Result r6 = (kotlin.Result) r6
            java.lang.Object r6 = r6.n()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.bidmachine.analytics.internal.Y.a(rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final byte[] a(C3323s c3323s, byte[] bArr) {
        if (bArr != null) {
            return AbstractC3324t.a(bArr, c3323s);
        }
        return null;
    }

    public /* synthetic */ Y(o0 o0Var, String str, p0 p0Var, C3323s c3323s, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(o0Var, str, p0Var, (i10 & 8) != 0 ? BidMachineAnalytics.INSTANCE.getEncryptionManager$bidmachine_android_sdk_bg_3_4_0() : c3323s);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(String str, byte[] bArr) {
        HttpURLConnection httpURLConnection;
        URLConnection uRLConnection = null;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            URLConnection openConnection = new URL(str).openConnection();
            Intrinsics.checkNotNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
            httpURLConnection = (HttpURLConnection) openConnection;
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f54048a.a(httpURLConnection);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN);
            httpURLConnection.setReadTimeout(TTVideoEngineInterface.GLOBAL_PLAYER_OPTION_MIN);
            C3323s c3323s = this.f54051d;
            if (c3323s != null) {
                httpURLConnection.setRequestProperty("bm-data", Base64.encodeToString(c3323s.a().b(), 2));
            }
            if (bArr != null && bArr.length != 0) {
                httpURLConnection.setDoOutput(true);
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(httpURLConnection.getOutputStream());
                    try {
                        bufferedOutputStream2.write(bArr);
                        s0.a((Flushable) bufferedOutputStream2);
                        s0.a((Closeable) bufferedOutputStream2);
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedOutputStream = bufferedOutputStream2;
                        if (bufferedOutputStream != null) {
                            Result.b(s0.a((Flushable) bufferedOutputStream));
                        }
                        if (bufferedOutputStream != null) {
                            Result.b(s0.a((Closeable) bufferedOutputStream));
                        }
                        throw th;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
            int b10 = b(httpURLConnection);
            if (b10 != 200 && b10 != 204) {
                if (b10 != 305 && b10 != 307 && b10 != 308) {
                    switch (b10) {
                        case 301:
                        case 302:
                        case 303:
                            break;
                        default:
                            throw new IllegalStateException(("Invalid response code: " + b10).toString());
                    }
                }
                String headerField = httpURLConnection.getHeaderField("Location");
                if (headerField != null && headerField.length() > 0) {
                    a(headerField, bArr);
                    a(httpURLConnection);
                    return;
                }
                throw new IllegalStateException(("Invalid response code: " + b10).toString());
            }
            a(httpURLConnection);
        } catch (Throwable th5) {
            th = th5;
            uRLConnection = httpURLConnection;
            a(uRLConnection);
            throw th;
        }
    }

    private final Object a(URLConnection uRLConnection) {
        try {
            Result.a aVar = Result.f60901b;
            if (uRLConnection instanceof HttpURLConnection) {
                ((HttpURLConnection) uRLConnection).disconnect();
            }
            return Result.d(Unit.f60915a);
        } catch (Throwable th2) {
            Result.a aVar2 = Result.f60901b;
            return Result.d(kotlin.f.a(th2));
        }
    }
}
