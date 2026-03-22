package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.u0;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: GraphRequestAsyncTask.kt */
@Metadata
/* loaded from: classes3.dex */
public class z extends AsyncTask<Void, Void, List<? extends b0>> {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f16916d = new a(null);

    /* renamed from: e  reason: collision with root package name */
    private static final String f16917e = z.class.getCanonicalName();
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final HttpURLConnection f16918a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final a0 f16919b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Exception f16920c;

    /* compiled from: GraphRequestAsyncTask.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public z(@Nullable HttpURLConnection httpURLConnection, @NotNull a0 requests) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        this.f16918a = httpURLConnection;
        this.f16919b = requests;
    }

    @VisibleForTesting(otherwise = 4)
    @Nullable
    public List<b0> a(@NotNull Void... params) {
        List<b0> o10;
        if (o4.a.d(this)) {
            return null;
        }
        try {
            Intrinsics.checkNotNullParameter(params, "params");
            try {
                HttpURLConnection httpURLConnection = this.f16918a;
                if (httpURLConnection == null) {
                    o10 = this.f16919b.f();
                } else {
                    o10 = GraphRequest.f14841n.o(httpURLConnection, this.f16919b);
                }
                return o10;
            } catch (Exception e10) {
                this.f16920c = e10;
                return null;
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    protected void b(@NotNull List<b0> result) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(result, "result");
            super.onPostExecute(result);
            Exception exc = this.f16920c;
            if (exc != null) {
                String str = f16917e;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("onPostExecute: exception encountered during request: %s", Arrays.copyOf(new Object[]{exc.getMessage()}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                u0.k0(str, format);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ List<? extends b0> doInBackground(Void[] voidArr) {
        if (o4.a.d(this)) {
            return null;
        }
        try {
            return a(voidArr);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(List<? extends b0> list) {
        if (o4.a.d(this)) {
            return;
        }
        try {
            b(list);
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @Override // android.os.AsyncTask
    @VisibleForTesting(otherwise = 4)
    public void onPreExecute() {
        Handler handler;
        if (o4.a.d(this)) {
            return;
        }
        try {
            super.onPreExecute();
            if (v.E()) {
                String str = f16917e;
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                String format = String.format("execute async task: %s", Arrays.copyOf(new Object[]{this}, 1));
                Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                u0.k0(str, format);
            }
            if (this.f16919b.m() == null) {
                if (Thread.currentThread() instanceof HandlerThread) {
                    handler = new Handler();
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                this.f16919b.y(handler);
            }
        } catch (Throwable th2) {
            o4.a.b(th2, this);
        }
    }

    @NotNull
    public String toString() {
        String str = "{RequestAsyncTask:  connection: " + this.f16918a + ", requests: " + this.f16919b + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder()\n        …(\"}\")\n        .toString()");
        return str;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public z(@NotNull a0 requests) {
        this(null, requests);
        Intrinsics.checkNotNullParameter(requests, "requests");
    }
}
