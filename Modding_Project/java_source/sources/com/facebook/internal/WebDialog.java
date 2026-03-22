package com.facebook.internal;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.annotation.VisibleForTesting;
import com.facebook.AccessToken;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookException;
import com.facebook.FacebookGraphResponseException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.FacebookRequestError;
import com.facebook.GraphRequest;
import com.facebook.internal.WebDialog;
import com.facebook.login.LoginTargetApp;
import com.huawei.hms.support.api.entity.common.CommonConstant;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.ss.ttvideoengine.model.VideoThumbInfo;
import com.unity3d.services.core.di.ServiceProvider;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: WebDialog.kt */
@Metadata
@SourceDebugExtension({"SMAP\nWebDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDialog.kt\ncom/facebook/internal/WebDialog\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,875:1\n1#2:876\n*E\n"})
/* loaded from: classes3.dex */
public class WebDialog extends Dialog {
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    public static final b f16109m = new b(null);

    /* renamed from: n  reason: collision with root package name */
    private static final int f16110n = com.facebook.common.f.f15310a;

    /* renamed from: o  reason: collision with root package name */
    private static volatile int f16111o;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f16112a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private String f16113b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private d f16114c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private WebView f16115d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private ProgressDialog f16116e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private ImageView f16117f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private FrameLayout f16118g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private e f16119h;

    /* renamed from: i  reason: collision with root package name */
    private boolean f16120i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f16121j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f16122k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private WindowManager.LayoutParams f16123l;

    /* compiled from: WebDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a() {
            v0.l();
            return WebDialog.f16111o;
        }

        protected final void b(@Nullable Context context) {
            Bundle bundle;
            if (context == null) {
                return;
            }
            try {
                ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
                if (applicationInfo != null) {
                    bundle = applicationInfo.metaData;
                } else {
                    bundle = null;
                }
                if (bundle != null && WebDialog.f16111o == 0) {
                    e(applicationInfo.metaData.getInt("com.facebook.sdk.WebDialogTheme"));
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }

        @NotNull
        public final WebDialog c(@NotNull Context context, @Nullable String str, @Nullable Bundle bundle, int i10, @Nullable d dVar) {
            Intrinsics.checkNotNullParameter(context, "context");
            WebDialog.s(context);
            return new WebDialog(context, str, bundle, i10, LoginTargetApp.FACEBOOK, dVar, null);
        }

        @NotNull
        public final WebDialog d(@NotNull Context context, @Nullable String str, @Nullable Bundle bundle, int i10, @NotNull LoginTargetApp targetApp, @Nullable d dVar) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(targetApp, "targetApp");
            WebDialog.s(context);
            return new WebDialog(context, str, bundle, i10, targetApp, dVar, null);
        }

        public final void e(int i10) {
            if (i10 == 0) {
                i10 = WebDialog.f16110n;
            }
            WebDialog.f16111o = i10;
        }

        private b() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public final class c extends WebViewClient {
        public c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NotNull WebView view, @NotNull String url) {
            ProgressDialog progressDialog;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            super.onPageFinished(view, url);
            if (!WebDialog.this.f16121j && (progressDialog = WebDialog.this.f16116e) != null) {
                progressDialog.dismiss();
            }
            FrameLayout frameLayout = WebDialog.this.f16118g;
            if (frameLayout != null) {
                frameLayout.setBackgroundColor(0);
            }
            WebView r10 = WebDialog.this.r();
            if (r10 != null) {
                r10.setVisibility(0);
            }
            ImageView imageView = WebDialog.this.f16117f;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            WebDialog.this.f16122k = true;
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(@NotNull WebView view, @NotNull String url, @Nullable Bitmap bitmap) {
            ProgressDialog progressDialog;
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(url, "url");
            u0.k0("FacebookSDK.WebDialog", "Webview loading URL: " + url);
            super.onPageStarted(view, url, bitmap);
            if (!WebDialog.this.f16121j && (progressDialog = WebDialog.this.f16116e) != null) {
                progressDialog.show();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NotNull WebView view, int i10, @NotNull String description, @NotNull String failingUrl) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(description, "description");
            Intrinsics.checkNotNullParameter(failingUrl, "failingUrl");
            super.onReceivedError(view, i10, description, failingUrl);
            WebDialog.this.y(new FacebookDialogException(description, i10, failingUrl));
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(@NotNull WebView view, @NotNull SslErrorHandler handler, @NotNull SslError error) {
            Intrinsics.checkNotNullParameter(view, "view");
            Intrinsics.checkNotNullParameter(handler, "handler");
            Intrinsics.checkNotNullParameter(error, "error");
            super.onReceivedSslError(view, handler, error);
            handler.cancel();
            WebDialog.this.y(new FacebookDialogException(null, -11, null));
        }

        /* JADX WARN: Removed duplicated region for block: B:39:0x00b8  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00be  */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(@org.jetbrains.annotations.NotNull android.webkit.WebView r6, @org.jetbrains.annotations.NotNull java.lang.String r7) {
            /*
                Method dump skipped, instructions count: 255
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.WebDialog.c.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* compiled from: WebDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public interface d {
        void a(@Nullable Bundle bundle, @Nullable FacebookException facebookException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: WebDialog.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nWebDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WebDialog.kt\ncom/facebook/internal/WebDialog$UploadStagingResourcesTask\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,875:1\n26#2:876\n*S KotlinDebug\n*F\n+ 1 WebDialog.kt\ncom/facebook/internal/WebDialog$UploadStagingResourcesTask\n*L\n686#1:876\n*E\n"})
    /* loaded from: classes3.dex */
    public final class e extends AsyncTask<Void, Void, String[]> {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final String f16132a;
        @NotNull

        /* renamed from: b  reason: collision with root package name */
        private final Bundle f16133b;
        @NotNull

        /* renamed from: c  reason: collision with root package name */
        private Exception[] f16134c;

        /* renamed from: d  reason: collision with root package name */
        final /* synthetic */ WebDialog f16135d;

        public e(@NotNull WebDialog webDialog, @NotNull String action, Bundle parameters) {
            Intrinsics.checkNotNullParameter(action, "action");
            Intrinsics.checkNotNullParameter(parameters, "parameters");
            this.f16135d = webDialog;
            this.f16132a = action;
            this.f16133b = parameters;
            this.f16134c = new Exception[0];
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(String[] results, int i10, e this$0, CountDownLatch latch, com.facebook.b0 response) {
            FacebookRequestError b10;
            String str;
            Intrinsics.checkNotNullParameter(results, "$results");
            Intrinsics.checkNotNullParameter(this$0, "this$0");
            Intrinsics.checkNotNullParameter(latch, "$latch");
            Intrinsics.checkNotNullParameter(response, "response");
            try {
                b10 = response.b();
                str = "Error staging photo.";
            } catch (Exception e10) {
                this$0.f16134c[i10] = e10;
            }
            if (b10 != null) {
                String c10 = b10.c();
                if (c10 != null) {
                    str = c10;
                }
                throw new FacebookGraphResponseException(response, str);
            }
            JSONObject c11 = response.c();
            if (c11 != null) {
                String optString = c11.optString(VideoThumbInfo.KEY_URI);
                if (optString != null) {
                    results[i10] = optString;
                    latch.countDown();
                    return;
                }
                throw new FacebookException("Error staging photo.");
            }
            throw new FacebookException("Error staging photo.");
        }

        @Nullable
        protected String[] b(@NotNull Void... p02) {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                Intrinsics.checkNotNullParameter(p02, "p0");
                String[] stringArray = this.f16133b.getStringArray("media");
                if (stringArray == null) {
                    return null;
                }
                final String[] strArr = new String[stringArray.length];
                this.f16134c = new Exception[stringArray.length];
                final CountDownLatch countDownLatch = new CountDownLatch(stringArray.length);
                ConcurrentLinkedQueue concurrentLinkedQueue = new ConcurrentLinkedQueue();
                AccessToken e10 = AccessToken.f14731l.e();
                try {
                    int length = stringArray.length;
                    for (final int i10 = 0; i10 < length; i10++) {
                        if (isCancelled()) {
                            Iterator it = concurrentLinkedQueue.iterator();
                            while (it.hasNext()) {
                                ((com.facebook.z) it.next()).cancel(true);
                            }
                            return null;
                        }
                        Uri uri = Uri.parse(stringArray[i10]);
                        if (u0.f0(uri)) {
                            strArr[i10] = uri.toString();
                            countDownLatch.countDown();
                        } else {
                            GraphRequest.b bVar = new GraphRequest.b() { // from class: com.facebook.internal.z0
                                @Override // com.facebook.GraphRequest.b
                                public final void a(com.facebook.b0 b0Var) {
                                    WebDialog.e.c(strArr, i10, this, countDownLatch, b0Var);
                                }
                            };
                            Intrinsics.checkNotNullExpressionValue(uri, "uri");
                            concurrentLinkedQueue.add(v4.a.a(e10, uri, bVar).l());
                        }
                    }
                    countDownLatch.await();
                    return strArr;
                } catch (Exception unused) {
                    Iterator it2 = concurrentLinkedQueue.iterator();
                    while (it2.hasNext()) {
                        ((com.facebook.z) it2.next()).cancel(true);
                    }
                    return null;
                }
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }

        protected void d(@Nullable String[] strArr) {
            Exception[] excArr;
            if (!o4.a.d(this)) {
                try {
                    ProgressDialog progressDialog = this.f16135d.f16116e;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                    }
                    for (Exception exc : this.f16134c) {
                        if (exc != null) {
                            this.f16135d.y(exc);
                            return;
                        }
                    }
                    if (strArr == null) {
                        this.f16135d.y(new FacebookException("Failed to stage photos for web dialog"));
                        return;
                    }
                    List g10 = kotlin.collections.n.g(strArr);
                    if (g10.contains(null)) {
                        this.f16135d.y(new FacebookException("Failed to stage photos for web dialog"));
                        return;
                    }
                    u0.q0(this.f16133b, "media", new JSONArray((Collection) g10));
                    this.f16135d.f16112a = u0.g(o0.b(), com.facebook.v.x() + "/dialog/" + this.f16132a, this.f16133b).toString();
                    ImageView imageView = this.f16135d.f16117f;
                    if (imageView != null) {
                        this.f16135d.C((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
                        return;
                    }
                    throw new IllegalStateException("Required value was null.");
                } catch (Throwable th2) {
                    o4.a.b(th2, this);
                }
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ String[] doInBackground(Void[] voidArr) {
            if (o4.a.d(this)) {
                return null;
            }
            try {
                return b(voidArr);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
                return null;
            }
        }

        @Override // android.os.AsyncTask
        public /* bridge */ /* synthetic */ void onPostExecute(String[] strArr) {
            if (o4.a.d(this)) {
                return;
            }
            try {
                d(strArr);
            } catch (Throwable th2) {
                o4.a.b(th2, this);
            }
        }
    }

    /* compiled from: WebDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public /* synthetic */ class f {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoginTargetApp.values().length];
            try {
                iArr[LoginTargetApp.INSTAGRAM.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public /* synthetic */ WebDialog(Context context, String str, Bundle bundle, int i10, LoginTargetApp loginTargetApp, d dVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, bundle, i10, loginTargetApp, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"SetJavaScriptEnabled"})
    public final void C(int i10) {
        WebSettings webSettings;
        WebSettings webSettings2;
        LinearLayout linearLayout = new LinearLayout(getContext());
        final Context context = getContext();
        WebView webView = new WebView(context) { // from class: com.facebook.internal.WebDialog$setUpWebView$1
            @Override // android.webkit.WebView, android.view.View
            public void onWindowFocusChanged(boolean z10) {
                try {
                    super.onWindowFocusChanged(z10);
                } catch (NullPointerException unused) {
                }
            }
        };
        this.f16115d = webView;
        webView.setVerticalScrollBarEnabled(false);
        WebView webView2 = this.f16115d;
        if (webView2 != null) {
            webView2.setHorizontalScrollBarEnabled(false);
        }
        WebView webView3 = this.f16115d;
        if (webView3 != null) {
            webView3.setWebViewClient(new c());
        }
        WebView webView4 = this.f16115d;
        WebSettings webSettings3 = null;
        if (webView4 != null) {
            webSettings = webView4.getSettings();
        } else {
            webSettings = null;
        }
        if (webSettings != null) {
            webSettings.setJavaScriptEnabled(true);
        }
        WebView webView5 = this.f16115d;
        if (webView5 != null) {
            String str = this.f16112a;
            if (str != null) {
                webView5.loadUrl(str);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        WebView webView6 = this.f16115d;
        if (webView6 != null) {
            webView6.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        }
        WebView webView7 = this.f16115d;
        if (webView7 != null) {
            webView7.setVisibility(4);
        }
        WebView webView8 = this.f16115d;
        if (webView8 != null) {
            webSettings2 = webView8.getSettings();
        } else {
            webSettings2 = null;
        }
        if (webSettings2 != null) {
            webSettings2.setSavePassword(false);
        }
        WebView webView9 = this.f16115d;
        if (webView9 != null) {
            webSettings3 = webView9.getSettings();
        }
        if (webSettings3 != null) {
            webSettings3.setSaveFormData(false);
        }
        WebView webView10 = this.f16115d;
        if (webView10 != null) {
            webView10.setFocusable(true);
        }
        WebView webView11 = this.f16115d;
        if (webView11 != null) {
            webView11.setFocusableInTouchMode(true);
        }
        WebView webView12 = this.f16115d;
        if (webView12 != null) {
            webView12.setOnTouchListener(new View.OnTouchListener() { // from class: com.facebook.internal.w0
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    boolean D;
                    D = WebDialog.D(view, motionEvent);
                    return D;
                }
            });
        }
        linearLayout.setPadding(i10, i10, i10, i10);
        linearLayout.addView(this.f16115d);
        linearLayout.setBackgroundColor(-872415232);
        FrameLayout frameLayout = this.f16118g;
        if (frameLayout != null) {
            frameLayout.addView(linearLayout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean D(View view, MotionEvent motionEvent) {
        if (!view.hasFocus()) {
            view.requestFocus();
            return false;
        }
        return false;
    }

    private final void o() {
        ImageView imageView = new ImageView(getContext());
        this.f16117f = imageView;
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.facebook.internal.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebDialog.p(WebDialog.this, view);
            }
        });
        Drawable drawable = getContext().getResources().getDrawable(com.facebook.common.b.f15287b);
        ImageView imageView2 = this.f16117f;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
        ImageView imageView3 = this.f16117f;
        if (imageView3 != null) {
            imageView3.setVisibility(4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void p(WebDialog this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cancel();
    }

    private final int q(int i10, float f10, int i11, int i12) {
        double d10;
        int i13 = (int) (i10 / f10);
        if (i13 <= i11) {
            d10 = 1.0d;
        } else if (i13 >= i12) {
            d10 = 0.5d;
        } else {
            d10 = (((i12 - i13) / (i12 - i11)) * 0.5d) + 0.5d;
        }
        return (int) (i10 * d10);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static final void s(@Nullable Context context) {
        f16109m.b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v(WebDialog this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.cancel();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void A(@NotNull String expectedRedirectUrl) {
        Intrinsics.checkNotNullParameter(expectedRedirectUrl, "expectedRedirectUrl");
        this.f16113b = expectedRedirectUrl;
    }

    public final void B(@Nullable d dVar) {
        this.f16114c = dVar;
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        if (this.f16114c != null && !this.f16120i) {
            y(new FacebookOperationCanceledException());
        }
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        ProgressDialog progressDialog;
        WebView webView = this.f16115d;
        if (webView != null) {
            webView.stopLoading();
        }
        if (!this.f16121j && (progressDialog = this.f16116e) != null && progressDialog.isShowing()) {
            progressDialog.dismiss();
        }
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        WindowManager.LayoutParams layoutParams;
        IBinder iBinder;
        IBinder iBinder2;
        Window window;
        WindowManager.LayoutParams attributes;
        this.f16121j = false;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "context");
        if (u0.o0(context) && (layoutParams = this.f16123l) != null) {
            IBinder iBinder3 = null;
            if (layoutParams != null) {
                iBinder = layoutParams.token;
            } else {
                iBinder = null;
            }
            if (iBinder == null) {
                if (layoutParams != null) {
                    Activity ownerActivity = getOwnerActivity();
                    if (ownerActivity != null && (window = ownerActivity.getWindow()) != null && (attributes = window.getAttributes()) != null) {
                        iBinder2 = attributes.token;
                    } else {
                        iBinder2 = null;
                    }
                    layoutParams.token = iBinder2;
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Set token on onAttachedToWindow(): ");
                WindowManager.LayoutParams layoutParams2 = this.f16123l;
                if (layoutParams2 != null) {
                    iBinder3 = layoutParams2.token;
                }
                sb2.append(iBinder3);
                u0.k0("FacebookSDK.WebDialog", sb2.toString());
            }
        }
        super.onAttachedToWindow();
    }

    @Override // android.app.Dialog
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        this.f16116e = progressDialog;
        progressDialog.requestWindowFeature(1);
        ProgressDialog progressDialog2 = this.f16116e;
        if (progressDialog2 != null) {
            progressDialog2.setMessage(getContext().getString(com.facebook.common.e.f15306d));
        }
        ProgressDialog progressDialog3 = this.f16116e;
        if (progressDialog3 != null) {
            progressDialog3.setCanceledOnTouchOutside(false);
        }
        ProgressDialog progressDialog4 = this.f16116e;
        if (progressDialog4 != null) {
            progressDialog4.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.facebook.internal.x0
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    WebDialog.v(WebDialog.this, dialogInterface);
                }
            });
        }
        requestWindowFeature(1);
        this.f16118g = new FrameLayout(getContext());
        x();
        Window window = getWindow();
        if (window != null) {
            window.setGravity(17);
        }
        Window window2 = getWindow();
        if (window2 != null) {
            window2.setSoftInputMode(16);
        }
        o();
        if (this.f16112a != null) {
            ImageView imageView = this.f16117f;
            if (imageView != null) {
                C((imageView.getDrawable().getIntrinsicWidth() / 2) + 1);
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        FrameLayout frameLayout = this.f16118g;
        if (frameLayout != null) {
            frameLayout.addView(this.f16117f, new ViewGroup.LayoutParams(-2, -2));
        }
        FrameLayout frameLayout2 = this.f16118g;
        if (frameLayout2 != null) {
            setContentView(frameLayout2);
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        this.f16121j = true;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i10, @NotNull KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (i10 == 4) {
            WebView webView = this.f16115d;
            if (webView != null && webView != null && webView.canGoBack()) {
                WebView webView2 = this.f16115d;
                if (webView2 != null) {
                    webView2.goBack();
                }
                return true;
            }
            cancel();
        }
        return super.onKeyDown(i10, event);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        AsyncTask.Status status;
        super.onStart();
        e eVar = this.f16119h;
        if (eVar != null) {
            if (eVar != null) {
                status = eVar.getStatus();
            } else {
                status = null;
            }
            if (status == AsyncTask.Status.PENDING) {
                e eVar2 = this.f16119h;
                if (eVar2 != null) {
                    eVar2.execute(new Void[0]);
                }
                ProgressDialog progressDialog = this.f16116e;
                if (progressDialog != null) {
                    progressDialog.show();
                    return;
                }
                return;
            }
        }
        x();
    }

    @Override // android.app.Dialog
    protected void onStop() {
        e eVar = this.f16119h;
        if (eVar != null) {
            eVar.cancel(true);
            ProgressDialog progressDialog = this.f16116e;
            if (progressDialog != null) {
                progressDialog.dismiss();
            }
        }
        super.onStop();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onWindowAttributesChanged(@NotNull WindowManager.LayoutParams params) {
        Intrinsics.checkNotNullParameter(params, "params");
        if (params.token == null) {
            this.f16123l = params;
        }
        super.onWindowAttributesChanged(params);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Nullable
    public final WebView r() {
        return this.f16115d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean t() {
        return this.f16120i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean u() {
        return this.f16122k;
    }

    @VisibleForTesting(otherwise = 4)
    @NotNull
    public Bundle w(@Nullable String str) {
        Uri parse = Uri.parse(str);
        Bundle p02 = u0.p0(parse.getQuery());
        p02.putAll(u0.p0(parse.getFragment()));
        return p02;
    }

    public final void x() {
        int i10;
        Object systemService = getContext().getSystemService("window");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        int i11 = displayMetrics.widthPixels;
        int i12 = displayMetrics.heightPixels;
        if (i11 < i12) {
            i10 = i11;
        } else {
            i10 = i12;
        }
        if (i11 < i12) {
            i11 = i12;
        }
        int min = Math.min(q(i10, displayMetrics.density, 480, 800), displayMetrics.widthPixels);
        int min2 = Math.min(q(i11, displayMetrics.density, 800, TTVideoEngineInterface.PLAYER_OPTION_ENABLE_BOX_DEMUXER), displayMetrics.heightPixels);
        Window window = getWindow();
        if (window != null) {
            window.setLayout(min, min2);
        }
    }

    protected final void y(@Nullable Throwable th2) {
        FacebookException facebookException;
        if (this.f16114c != null && !this.f16120i) {
            this.f16120i = true;
            if (th2 instanceof FacebookException) {
                facebookException = (FacebookException) th2;
            } else {
                facebookException = new FacebookException(th2);
            }
            d dVar = this.f16114c;
            if (dVar != null) {
                dVar.a(null, facebookException);
            }
            dismiss();
        }
    }

    protected final void z(@Nullable Bundle bundle) {
        d dVar = this.f16114c;
        if (dVar != null && !this.f16120i) {
            this.f16120i = true;
            if (dVar != null) {
                dVar.a(bundle, null);
            }
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public WebDialog(@NotNull Context context, @NotNull String url) {
        this(context, url, f16109m.a());
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
    }

    private WebDialog(Context context, String str, int i10) {
        super(context, i10 == 0 ? f16109m.a() : i10);
        this.f16113b = "fbconnect://success";
        this.f16112a = str;
    }

    private WebDialog(Context context, String str, Bundle bundle, int i10, LoginTargetApp loginTargetApp, d dVar) {
        super(context, i10 == 0 ? f16109m.a() : i10);
        Uri g10;
        this.f16113b = "fbconnect://success";
        bundle = bundle == null ? new Bundle() : bundle;
        String str2 = u0.X(context) ? "fbconnect://chrome_os_success" : "fbconnect://success";
        this.f16113b = str2;
        bundle.putString(CommonConstant.ReqAccessTokenParam.REDIRECT_URI, str2);
        bundle.putString("display", "touch");
        bundle.putString(CommonConstant.ReqAccessTokenParam.CLIENT_ID, com.facebook.v.m());
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        String format = String.format(Locale.ROOT, "android-%s", Arrays.copyOf(new Object[]{com.facebook.v.C()}, 1));
        Intrinsics.checkNotNullExpressionValue(format, "format(locale, format, *args)");
        bundle.putString(ServiceProvider.NAMED_SDK, format);
        this.f16114c = dVar;
        if (Intrinsics.areEqual(str, "share") && bundle.containsKey("media")) {
            this.f16119h = new e(this, str, bundle);
            return;
        }
        if (f.$EnumSwitchMapping$0[loginTargetApp.ordinal()] == 1) {
            g10 = u0.g(o0.k(), "oauth/authorize", bundle);
        } else {
            String b10 = o0.b();
            g10 = u0.g(b10, com.facebook.v.x() + "/dialog/" + str, bundle);
        }
        this.f16112a = g10.toString();
    }

    /* compiled from: WebDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private Context f16124a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private String f16125b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private String f16126c;

        /* renamed from: d  reason: collision with root package name */
        private int f16127d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        private d f16128e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        private Bundle f16129f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private AccessToken f16130g;

        public a(@NotNull Context context, @NotNull String action, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(action, "action");
            AccessToken.c cVar = AccessToken.f14731l;
            this.f16130g = cVar.e();
            if (!cVar.g()) {
                String K = u0.K(context);
                if (K != null) {
                    this.f16125b = K;
                } else {
                    throw new FacebookException("Attempted to create a builder without a valid access token or a valid default Application ID.");
                }
            }
            b(context, action, bundle);
        }

        private final void b(Context context, String str, Bundle bundle) {
            this.f16124a = context;
            this.f16126c = str;
            if (bundle != null) {
                this.f16129f = bundle;
            } else {
                this.f16129f = new Bundle();
            }
        }

        @Nullable
        public WebDialog a() {
            String str;
            AccessToken accessToken = this.f16130g;
            if (accessToken != null) {
                Bundle bundle = this.f16129f;
                String str2 = null;
                if (bundle != null) {
                    if (accessToken != null) {
                        str = accessToken.c();
                    } else {
                        str = null;
                    }
                    bundle.putString("app_id", str);
                }
                Bundle bundle2 = this.f16129f;
                if (bundle2 != null) {
                    AccessToken accessToken2 = this.f16130g;
                    if (accessToken2 != null) {
                        str2 = accessToken2.m();
                    }
                    bundle2.putString("access_token", str2);
                }
            } else {
                Bundle bundle3 = this.f16129f;
                if (bundle3 != null) {
                    bundle3.putString("app_id", this.f16125b);
                }
            }
            b bVar = WebDialog.f16109m;
            Context context = this.f16124a;
            if (context != null) {
                return bVar.c(context, this.f16126c, this.f16129f, this.f16127d, this.f16128e);
            }
            throw new IllegalStateException("Required value was null.");
        }

        @Nullable
        public final String c() {
            return this.f16125b;
        }

        @Nullable
        public final Context d() {
            return this.f16124a;
        }

        @Nullable
        public final d e() {
            return this.f16128e;
        }

        @Nullable
        public final Bundle f() {
            return this.f16129f;
        }

        public final int g() {
            return this.f16127d;
        }

        @NotNull
        public final a h(@Nullable d dVar) {
            this.f16128e = dVar;
            return this;
        }

        public a(@NotNull Context context, @Nullable String str, @NotNull String action, @Nullable Bundle bundle) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(action, "action");
            this.f16125b = v0.k(str == null ? u0.K(context) : str, "applicationId");
            b(context, action, bundle);
        }
    }
}
