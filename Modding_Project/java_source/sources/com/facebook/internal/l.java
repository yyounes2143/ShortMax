package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.webkit.WebView;
import com.bytedance.applog.util.WebViewJsUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: FacebookWebFallbackDialog.kt */
@Metadata
/* loaded from: classes3.dex */
public final class l extends WebDialog {
    @NotNull

    /* renamed from: q  reason: collision with root package name */
    public static final a f16232q = new a(null);

    /* renamed from: r  reason: collision with root package name */
    private static final String f16233r = l.class.getName();

    /* renamed from: p  reason: collision with root package name */
    private boolean f16234p;

    /* compiled from: FacebookWebFallbackDialog.kt */
    @Metadata
    /* loaded from: classes3.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final l a(@NotNull Context context, @NotNull String url, @NotNull String expectedRedirectUrl) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(url, "url");
            Intrinsics.checkNotNullParameter(expectedRedirectUrl, "expectedRedirectUrl");
            WebDialog.s(context);
            return new l(context, url, expectedRedirectUrl, null);
        }

        private a() {
        }
    }

    public /* synthetic */ l(Context context, String str, String str2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F(l this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        super.cancel();
    }

    @Override // com.facebook.internal.WebDialog, android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        WebView r10 = r();
        if (u() && !t() && r10 != null && r10.isShown()) {
            if (this.f16234p) {
                return;
            }
            this.f16234p = true;
            r10.loadUrl(WebViewJsUtil.JS_URL_PREFIX + "(function() {  var event = document.createEvent('Event');  event.initEvent('fbPlatformDialogMustClose',true,true);  document.dispatchEvent(event);})();");
            new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.facebook.internal.k
                @Override // java.lang.Runnable
                public final void run() {
                    l.F(l.this);
                }
            }, 1500L);
            return;
        }
        super.cancel();
    }

    @Override // com.facebook.internal.WebDialog
    @NotNull
    public Bundle w(@Nullable String str) {
        Bundle p02 = u0.p0(Uri.parse(str).getQuery());
        String string = p02.getString("bridge_args");
        p02.remove("bridge_args");
        if (!u0.d0(string)) {
            try {
                p02.putBundle("com.facebook.platform.protocol.BRIDGE_ARGS", c.a(new JSONObject(string)));
            } catch (JSONException e10) {
                u0.l0(f16233r, "Unable to parse bridge_args JSON", e10);
            }
        }
        String string2 = p02.getString("method_results");
        p02.remove("method_results");
        if (!u0.d0(string2)) {
            try {
                p02.putBundle("com.facebook.platform.protocol.RESULT_ARGS", c.a(new JSONObject(string2)));
            } catch (JSONException e11) {
                u0.l0(f16233r, "Unable to parse bridge_args JSON", e11);
            }
        }
        p02.remove("version");
        p02.putInt("com.facebook.platform.protocol.PROTOCOL_VERSION", l0.u());
        return p02;
    }

    private l(Context context, String str, String str2) {
        super(context, str);
        A(str2);
    }
}
