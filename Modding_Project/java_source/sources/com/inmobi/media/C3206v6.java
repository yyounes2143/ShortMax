package com.inmobi.media;

import android.app.Activity;
import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.webkit.ProxyConfig;
import com.google.android.gms.fido.fido2.api.common.DevicePublicKeyStringDef;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.inmobi.media.C3206v6;
import com.inmobi.media.GestureDetector$OnGestureListenerC2941ec;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
import com.ss.ttvideoengine.DataLoaderHelper;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.presenter.MRAIDPresenter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.media.v6  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public final class C3206v6 {

    /* renamed from: a  reason: collision with root package name */
    public final GestureDetector$OnGestureListenerC2941ec f25359a;

    /* renamed from: b  reason: collision with root package name */
    public final int f25360b;

    /* renamed from: c  reason: collision with root package name */
    public InterfaceC3269z5 f25361c;

    public C3206v6(int i10, GestureDetector$OnGestureListenerC2941ec mRenderView) {
        Intrinsics.checkNotNullParameter(mRenderView, "mRenderView");
        this.f25359a = mRenderView;
        this.f25360b = i10;
    }

    public static final void b(C3206v6 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        M6.a(this$0.f25359a.getLandingPageHandler(), MRAIDPresenter.OPEN, str, str2, null, false, 24);
    }

    public static final void c(C3206v6 this$0, String str, String str2) {
        R6 r62;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            S6 s62 = this$0.f25359a.getLandingPageHandler().f23844f;
            if (s62 != null) {
                String a10 = J6.a(str2);
                M6 landingPageHandler = this$0.f25359a.getLandingPageHandler();
                int i10 = landingPageHandler.f23846h + 1;
                landingPageHandler.f23846h = i10;
                r62 = new R6(s62, a10, i10, 8);
            } else {
                r62 = null;
            }
            if (r62 != null) {
                r62.f24066g = "IN_NATIVE";
            }
            this$0.f25359a.getLandingPageHandler().d("openEmbedded", str, str2, r62);
        } catch (Exception e10) {
            this$0.f25359a.a(str, "Unexpected error", "openEmbedded");
            AbstractC2984h7.a((byte) 1, "InMobi", "Failed to open URL; SDK encountered unexpected error");
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling openEmbedded() request from creative; ")));
            }
        }
    }

    public static final void d(C3206v6 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        M6.a(this$0.f25359a.getLandingPageHandler(), "openWithoutTracker", str, str2, null, true, 8);
    }

    public static final void e(C3206v6 this$0, String str, String str2) {
        int i10;
        boolean z10;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this$0.f25359a;
            int length = str2.length() - 1;
            int i11 = 0;
            boolean z11 = false;
            while (i11 <= length) {
                if (!z11) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) str2.charAt(i10), 32) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z11) {
                    if (!z10) {
                        z11 = true;
                    } else {
                        i11++;
                    }
                } else if (!z10) {
                    break;
                } else {
                    length--;
                }
            }
            gestureDetector$OnGestureListenerC2941ec.b(str, str2.subSequence(i11, length + 1).toString());
        } catch (Exception e10) {
            this$0.f25359a.a(str, "Unexpected error", "playVideo");
            AbstractC2984h7.a((byte) 1, "InMobi", "Error playing video; SDK encountered an unexpected error");
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling playVideo() request from creative; ")));
            }
        }
    }

    public static final void f(C3206v6 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25359a.getSiblingWebviewManager().b(this$0.f25359a.getRoute().f23551b, str, str2);
        } catch (Exception e10) {
            this$0.f25359a.a("sendMessage", AbstractC3117pc.a(str, 310));
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling sendMessage() request from creative; ")));
            }
        }
    }

    public final GestureDetector$OnGestureListenerC2941ec a() {
        if (!Intrinsics.areEqual(this.f25359a.getRoute().f23551b, DataLoaderHelper.PRELOAD_DEFAULT_SCENE)) {
            tf webViewFactory = this.f25359a.getWebViewFactory();
            webViewFactory.getClass();
            Intrinsics.checkNotNullParameter(DataLoaderHelper.PRELOAD_DEFAULT_SCENE, "id");
            return (GestureDetector$OnGestureListenerC2941ec) webViewFactory.f25315b.get(DataLoaderHelper.PRELOAD_DEFAULT_SCENE);
        }
        return this.f25359a;
    }

    @JavascriptInterface
    public final void asyncPing(@Nullable String str, @NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "asyncPing called: ", url));
        }
        if (!URLUtil.isValidUrl(url)) {
            this.f25359a.a(str, "Invalid url", "asyncPing");
            return;
        }
        try {
            N9 n92 = new N9(url, this.f25361c);
            n92.f23908x = false;
            n92.f23904t = false;
            n92.f23905u = false;
            n92.a(new C3201v1(new C3217w1(n92, new C3158s6(this))));
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "asyncPing");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered internal error in handling asyncPing() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void cancelSaveContent(@Nullable String str, @NotNull String mediaId) {
        Intrinsics.checkNotNullParameter(mediaId, "mediaId");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "cancelSaveContent called. mediaId:", mediaId));
        }
    }

    @JavascriptInterface
    public final void close(@Nullable final String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "close called");
        }
        final GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).a(str3, "webview not present cannot be closed");
            }
        } else if (a10.K0) {
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z53).b(str4, "close called on unloaded ad");
            }
        } else {
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.d7
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.a(GestureDetector$OnGestureListenerC2941ec.this, this, str);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
        }
    }

    @JavascriptInterface
    public final void closeAll(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "closeAll is called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = a10.f24680i;
        if (interfaceC3269z53 != null) {
            String str4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z53).a(str4, Ob.a(a10, str4, "TAG", "closeAll "));
        }
        InterfaceC2861a0 interfaceC2861a0 = a10.f24683j0;
        if (interfaceC2861a0 != null) {
            interfaceC2861a0.b();
        }
        Activity activity = (Activity) a10.f24696q.get();
        if (activity != null) {
            activity.finish();
        }
    }

    @JavascriptInterface
    public final void closeCustomExpand(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "closeCustomExpand called.");
        }
        if (this.f25360b != 1) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                StringBuilder a10 = H6.a(str3, "access$getTAG$p(...)", "closeCustomExpand called in incorrect Ad type: ");
                a10.append(this.f25360b);
                ((A5) interfaceC3269z52).b(str3, a10.toString());
            }
        } else if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z53).b(str4, "Found a null instance of render view!");
            }
        } else {
            new Handler(this.f25359a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: ub.f7
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.a(C3206v6.this);
                }
            });
        }
    }

    @JavascriptInterface
    public final void customExpand(@Nullable String str, @Nullable String str2, int i10, float f10, boolean z10, boolean z11) {
        R6 r62;
        int i11;
        boolean z12;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "customExpand called");
        }
        if (this.f25359a.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "customExpand called on unloaded ad");
            }
        } else if (this.f25360b != 1) {
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str5 = AbstractC3222w6.f25388a;
                StringBuilder a10 = H6.a(str5, "access$getTAG$p(...)", "customExpand called in incorrect Ad type: ");
                a10.append(this.f25360b);
                ((A5) interfaceC3269z53).b(str5, a10.toString());
            }
        } else {
            if (str2 != null) {
                int length = str2.length() - 1;
                int i12 = 0;
                boolean z13 = false;
                while (i12 <= length) {
                    if (!z13) {
                        i11 = i12;
                    } else {
                        i11 = length;
                    }
                    if (Intrinsics.compare((int) str2.charAt(i11), 32) <= 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (!z13) {
                        if (!z12) {
                            z13 = true;
                        } else {
                            i12++;
                        }
                    } else if (!z12) {
                        break;
                    } else {
                        length--;
                    }
                }
                if (str2.subSequence(i12, length + 1).toString().length() != 0) {
                    if (i10 >= 0 && i10 < Z3.values().length) {
                        if (f10 >= 0.0f && f10 <= 1.0f) {
                            S6 s62 = this.f25359a.getLandingPageHandler().f23844f;
                            if (s62 != null) {
                                String a11 = J6.a(str2);
                                M6 landingPageHandler = this.f25359a.getLandingPageHandler();
                                int i13 = landingPageHandler.f23846h + 1;
                                landingPageHandler.f23846h = i13;
                                r62 = new R6(s62, a11, i13, 8);
                            } else {
                                r62 = null;
                            }
                            R6 r63 = r62;
                            if (r63 != null) {
                                r63.f24066g = "IN_CUSTOM";
                            }
                            M6 landingPageHandler2 = this.f25359a.getLandingPageHandler();
                            F6 funnelState = F6.f23634d;
                            Integer valueOf = Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes);
                            landingPageHandler2.getClass();
                            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                            J6.a(funnelState, r63, valueOf, new L6(landingPageHandler2));
                            a(str, str2, i10, f10, z11, r63);
                            return;
                        }
                        this.f25359a.a(str, "Invalid screenPercentage", "customExpand");
                        return;
                    }
                    this.f25359a.a(str, "Invalid inputType", "customExpand");
                    return;
                }
            }
            this.f25359a.a(str, "Invalid " + i10, "customExpand");
        }
    }

    @JavascriptInterface
    public final void customExpandInNative(@Nullable String str, @NotNull String url, float f10, boolean z10) {
        R6 r62;
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "customExpandInNative called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "customExpandInNative called on unloaded ad");
            }
        } else if (this.f25360b != 1) {
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str4 = AbstractC3222w6.f25388a;
                StringBuilder a10 = H6.a(str4, "access$getTAG$p(...)", "customExpandInNative called in incorrect Ad type: ");
                a10.append(this.f25360b);
                ((A5) interfaceC3269z53).b(str4, a10.toString());
            }
        } else if (f10 >= 0.0f && f10 <= 1.0f) {
            S6 s62 = gestureDetector$OnGestureListenerC2941ec.getLandingPageHandler().f23844f;
            if (s62 != null) {
                String a11 = J6.a(url);
                M6 landingPageHandler = this.f25359a.getLandingPageHandler();
                int i10 = landingPageHandler.f23846h + 1;
                landingPageHandler.f23846h = i10;
                r62 = new R6(s62, a11, i10, 8);
            } else {
                r62 = null;
            }
            R6 r63 = r62;
            if (r63 != null) {
                r63.f24066g = "IN_NATIVE";
            }
            M6 landingPageHandler2 = this.f25359a.getLandingPageHandler();
            F6 funnelState = F6.f23634d;
            Integer valueOf = Integer.valueOf((int) AVMDLDataLoader.KeyIsLiveMobileUploadAllow);
            landingPageHandler2.getClass();
            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
            J6.a(funnelState, r63, valueOf, new L6(landingPageHandler2));
            int a12 = this.f25359a.getLandingPageHandler().a("customExpandInNative", str, url, r63, new C2995i2(f10, z10));
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).a(str5, X8.a(str5, "access$getTAG$p(...)", "customExpandInNativeRequest: ", a12));
            }
            if (a12 == 3) {
                Z3 z32 = Z3.f24433a;
                a(str, url, 0, f10, !z10, r63);
            }
        } else {
            gestureDetector$OnGestureListenerC2941ec.a(str, "Invalid screenPercentage", "customExpandInNative");
        }
    }

    @JavascriptInterface
    public final void destroyWebView(@Nullable String str, @Nullable final String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "destroyWebView called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 != null && a10.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "destroyWebView called on unloaded ad");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a11 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a11.put("errorCode", 108);
            gestureDetector$OnGestureListenerC2941ec.a("destroyWebView", a11);
        } else if (str2 != null && str2.length() != 0) {
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.z6
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.a(C3206v6.this, str2);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
        } else {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar2 = AbstractC3117pc.f25160a;
            JSONObject a12 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a12.put("errorCode", 302);
            gestureDetector$OnGestureListenerC2941ec2.a("destroyWebView", a12);
        }
    }

    @JavascriptInterface
    public final void disableBackButton(@Nullable String str, boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "disableBackButton called");
        }
        this.f25359a.getWebViewFactory().a(new C3174t6(z10));
    }

    @JavascriptInterface
    public final void disableCloseRegion(@Nullable final String str, final boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "disableCloseRegion called");
        }
        final GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            this.f25359a.a(str, "Unexpected error", "disableCloseRegion");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
        Runnable runnable = new Runnable() { // from class: ub.k7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.a(GestureDetector$OnGestureListenerC2941ec.this, z10, this, str);
            }
        };
        executorC3096o7.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC3096o7.f25116a.post(runnable);
    }

    @JavascriptInterface
    public final void fireAdFailed(@Nullable String str) {
        try {
            InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).a(str2, "fireAdFailed called.");
            }
            this.f25359a.j();
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "fireAdFailed");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling fireAdFailed() signal from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void fireAdReady(@Nullable String str) {
        try {
            InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).a(str2, "fireAdReady called.");
            }
            this.f25359a.k();
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "fireAdReady");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling fireAdReady() signal from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void fireComplete(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "fireComplete is called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z53 != null) {
            String str4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z53).c(str4, Ob.a(gestureDetector$OnGestureListenerC2941ec, str4, "TAG", "completeFromInterActive "));
        }
        C2932e3 c2932e3 = gestureDetector$OnGestureListenerC2941ec.T0;
        if (c2932e3 != null && !c2932e3.f24628g.get()) {
            c2932e3.f24625d.f24851i = 1;
            Intrinsics.checkNotNull(c2932e3.f24624c);
        }
        InterfaceC3269z5 interfaceC3269z54 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z54 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z54).a(TAG, "completeFromInterActive");
        }
    }

    @JavascriptInterface
    public final void fireSkip(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5;
        InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
        if (interfaceC3269z52 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z52).a(str2, "fireSkip is called");
        }
        if (this.f25359a == null && (interfaceC3269z5 = this.f25361c) != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).b(str3, "Found a null instance of render view!");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z53 != null) {
            String str4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z53).c(str4, Ob.a(gestureDetector$OnGestureListenerC2941ec, str4, "TAG", "skipFromInterActive "));
        }
        C2932e3 c2932e3 = gestureDetector$OnGestureListenerC2941ec.T0;
        if (c2932e3 != null && !c2932e3.f24628g.get()) {
            c2932e3.f24625d.f24850h = 1;
            Intrinsics.checkNotNull(c2932e3.f24624c);
        }
        InterfaceC3269z5 interfaceC3269z54 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z54 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z54).a(TAG, "skipFromInterActive");
        }
    }

    @JavascriptInterface
    @Nullable
    public final String getAdContext(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getAdContext is called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
            }
            return null;
        }
        InterfaceC2861a0 adPodHandler = a10.getAdPodHandler();
        if (adPodHandler == null) {
            return null;
        }
        return ((S0) adPodHandler).K();
    }

    @JavascriptInterface
    public final void getBlob(@Nullable String str, @Nullable String str2) {
        InterfaceC2880b2 interfaceC2880b2;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "getBlob is called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z53).a(TAG, "getBlob");
        }
        if (str != null && str2 != null && (interfaceC2880b2 = gestureDetector$OnGestureListenerC2941ec.f24675f0) != null) {
            ((S0) interfaceC2880b2).a(str, str2, gestureDetector$OnGestureListenerC2941ec, gestureDetector$OnGestureListenerC2941ec.getImpressionId());
        }
    }

    @JavascriptInterface
    @NotNull
    public final String getCurrentPosition(@Nullable String str) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getCurrentPosition called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec2 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return "";
            }
            return "";
        }
        synchronized (gestureDetector$OnGestureListenerC2941ec2.getCurrentPositionMonitor()) {
            this.f25359a.C = true;
            new Handler(this.f25359a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: ub.h7
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.b(C3206v6.this);
                }
            });
            while (true) {
                gestureDetector$OnGestureListenerC2941ec = this.f25359a;
                if (gestureDetector$OnGestureListenerC2941ec.C) {
                    try {
                        gestureDetector$OnGestureListenerC2941ec.getCurrentPositionMonitor().wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    Unit unit = Unit.f60915a;
                }
            }
        }
        return gestureDetector$OnGestureListenerC2941ec.getCurrentPosition();
    }

    @JavascriptInterface
    public final int getCurrentRenderingIndex(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getCurrentRenderingIndex is called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
                return 0;
            }
            return 0;
        }
        return a10.getCurrentRenderingPodAdIndex();
    }

    @JavascriptInterface
    @NotNull
    public final String getDefaultPosition(@Nullable String str) {
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getDefaultPosition called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec2 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
            }
            String jSONObject = new JSONObject().toString();
            Intrinsics.checkNotNullExpressionValue(jSONObject, "toString(...)");
            return jSONObject;
        }
        synchronized (gestureDetector$OnGestureListenerC2941ec2.getDefaultPositionMonitor()) {
            this.f25359a.B = true;
            new Handler(this.f25359a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: ub.j7
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.c(C3206v6.this);
                }
            });
            while (true) {
                gestureDetector$OnGestureListenerC2941ec = this.f25359a;
                if (gestureDetector$OnGestureListenerC2941ec.B) {
                    try {
                        gestureDetector$OnGestureListenerC2941ec.getDefaultPositionMonitor().wait();
                    } catch (InterruptedException unused) {
                    }
                } else {
                    Unit unit = Unit.f60915a;
                }
            }
        }
        return gestureDetector$OnGestureListenerC2941ec.getDefaultPosition();
    }

    @JavascriptInterface
    public final int getDeviceVolume(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getDeviceVolume called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
            }
            return -1;
        }
        try {
            F7 mediaProcessor = gestureDetector$OnGestureListenerC2941ec.getMediaProcessor();
            if (mediaProcessor != null) {
                return mediaProcessor.a();
            }
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "getDeviceVolume");
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str4 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z53).b(str4, rf.a(e10, H6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getDeviceVolume() request from creative; ")));
            }
        }
        return -1;
    }

    @JavascriptInterface
    public final int getMaxDeviceVolume(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getMaxDeviceVolume called");
        }
        try {
            return L3.f23796a.m();
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "getMaxDeviceVolume");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getMaxDeviceVolume() request from creative; ")));
                return 0;
            }
            return 0;
        }
    }

    @JavascriptInterface
    @NotNull
    public final String getMaxSize(@Nullable String str) {
        int i10;
        int i11;
        Activity activity;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getMaxSize called");
        }
        JSONObject jSONObject = new JSONObject();
        try {
            Activity fullScreenActivity = this.f25359a.getFullScreenActivity();
            if (fullScreenActivity == null) {
                Context containerContext = this.f25359a.getContainerContext();
                if (containerContext instanceof Activity) {
                    activity = (Activity) containerContext;
                } else {
                    activity = null;
                }
                if (activity == null) {
                    return getScreenSize(str);
                }
                Context containerContext2 = this.f25359a.getContainerContext();
                Intrinsics.checkNotNull(containerContext2, "null cannot be cast to non-null type android.app.Activity");
                fullScreenActivity = (Activity) containerContext2;
            }
            FrameLayout frameLayout = (FrameLayout) fullScreenActivity.findViewById(16908290);
            int b10 = B2.b(frameLayout.getWidth() / U3.b());
            int b11 = B2.b(frameLayout.getHeight() / U3.b());
            if (this.f25359a.getFullScreenActivity() != null && (b10 == 0 || b11 == 0)) {
                Intrinsics.checkNotNull(frameLayout);
                ViewTreeObserver$OnGlobalLayoutListenerC3142r6 viewTreeObserver$OnGlobalLayoutListenerC3142r6 = new ViewTreeObserver$OnGlobalLayoutListenerC3142r6(frameLayout, this.f25361c);
                frameLayout.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC3142r6);
                Boolean bool = Boolean.FALSE;
                synchronized (bool) {
                    try {
                        bool.wait();
                    } catch (InterruptedException unused) {
                    }
                    i10 = viewTreeObserver$OnGlobalLayoutListenerC3142r6.f25233c;
                    i11 = viewTreeObserver$OnGlobalLayoutListenerC3142r6.f25234d;
                    Unit unit = Unit.f60915a;
                }
                b11 = i11;
                b10 = i10;
            }
            try {
                jSONObject.put("width", b10);
                jSONObject.put("height", b11);
            } catch (JSONException e10) {
                InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
                if (interfaceC3269z52 != null) {
                    String str3 = AbstractC3222w6.f25388a;
                    Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z52).a(str3, "Error while creating max size Json.", e10);
                }
            }
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z53).a(str4, "getMaxSize called:" + jSONObject);
            }
        } catch (Exception e11) {
            this.f25359a.a(str, "Unexpected error", "getMaxSize");
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str5, rf.a(e11, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getMaxSize() request from creative; ")));
            }
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        return jSONObject2;
    }

    @JavascriptInterface
    @NotNull
    public final String getOrientation(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getOrientation called");
        }
        byte g10 = U3.g();
        if (g10 == 1) {
            return MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        if (g10 == 3) {
            return "90";
        }
        if (g10 == 2) {
            return "180";
        }
        if (g10 == 4) {
            return "270";
        }
        return "-1";
    }

    @JavascriptInterface
    @NotNull
    public final String getOrientationProperties(@Nullable String str) {
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            a10 = this.f25359a;
        }
        String str2 = a10.getOrientationProperties().f25245d;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str3, I6.a(str3, "access$getTAG$p(...)", "getOrientationProperties called: ", str2));
        }
        Intrinsics.checkNotNull(str2);
        return str2;
    }

    @JavascriptInterface
    @NotNull
    public final String getPlacementType(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getPlacementType called");
        }
        if (1 == this.f25360b) {
            return Constants.PLACEMENT_TYPE_INTERSTITIAL;
        }
        return "inline";
    }

    @JavascriptInterface
    @NotNull
    public final String getPlatform(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getPlatform. Platform:android");
            return "android";
        }
        return "android";
    }

    @JavascriptInterface
    @NotNull
    public final String getPlatformVersion(@Nullable String str) {
        String valueOf = String.valueOf(Build.VERSION.SDK_INT);
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "getPlatformVersion. Version:", valueOf));
        }
        return valueOf;
    }

    @JavascriptInterface
    @NotNull
    public final String getRenderableAdIndexes(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getRenderableAdIndexes is called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
            }
            String jSONArray = new JSONArray().toString();
            Intrinsics.checkNotNullExpressionValue(jSONArray, "toString(...)");
            return jSONArray;
        }
        JSONArray renderableAdIndexes = a10.getRenderableAdIndexes();
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "renderableAdIndexes called:" + renderableAdIndexes);
        }
        String jSONArray2 = renderableAdIndexes.toString();
        Intrinsics.checkNotNullExpressionValue(jSONArray2, "toString(...)");
        return jSONArray2;
    }

    @JavascriptInterface
    @Nullable
    public final String getSafeArea(@Nullable String str) {
        JSONObject safeArea = this.f25359a.getSafeArea();
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getSafeArea called:" + safeArea);
        }
        if (safeArea != null) {
            return safeArea.toString();
        }
        return null;
    }

    @JavascriptInterface
    @NotNull
    public final String getScreenSize(@Nullable String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", U3.h().f24297a);
            jSONObject.put("height", U3.h().f24298b);
            InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).c(str2, "Message:Width x Height : " + U3.h().f24297a + 'x' + U3.h().f24298b);
            }
        } catch (JSONException unused) {
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "getScreenSize");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error while getting screen dimensions; ")));
            }
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z53).a(str4, I6.a(str4, "access$getTAG$p(...)", "getScreenSize called:", jSONObject2));
        }
        return jSONObject2;
    }

    @JavascriptInterface
    @NotNull
    public final String getSdkVersion(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getSdkVersion called. Version:10.8.7");
            return "10.8.7";
        }
        return "10.8.7";
    }

    @JavascriptInterface
    public final long getShowTimeStamp(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getShowTimeStamp is called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
                return 0L;
            }
            return 0L;
        }
        long showTimeStamp = a10.getShowTimeStamp();
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "getShowTimeStamp is " + showTimeStamp);
        }
        return showTimeStamp;
    }

    @JavascriptInterface
    @NotNull
    public final String getState(@Nullable String str) {
        String viewState = this.f25359a.getViewState();
        Locale ENGLISH = Locale.ENGLISH;
        Intrinsics.checkNotNullExpressionValue(ENGLISH, "ENGLISH");
        String lowerCase = viewState.toLowerCase(ENGLISH);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "this as java.lang.String).toLowerCase(locale)");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).c(str2, I6.a(str2, "access$getTAG$p(...)", "getState called:", lowerCase));
        }
        return lowerCase;
    }

    @JavascriptInterface
    @NotNull
    public final String getVersion(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "getVersion called. Version:2.0");
            return MBridgeConstans.NATIVE_VIDEO_VERSION;
        }
        return MBridgeConstans.NATIVE_VIDEO_VERSION;
    }

    @JavascriptInterface
    public final void impressionFired(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "impressionFired is called");
        }
        this.f25359a.o();
    }

    @JavascriptInterface
    public final void incentCompleted(@Nullable String str, @Nullable String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str3, I6.a(str3, "access$getTAG$p(...)", "incentCompleted called. IncentData:", str2));
        }
        if (str2 == null) {
            try {
                this.f25359a.getListener().b(new HashMap());
                return;
            } catch (Exception e10) {
                this.f25359a.a(str, "Unexpected error", "incentCompleted");
                InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
                if (interfaceC3269z52 != null) {
                    String str4 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z52).b(str4, rf.a(e10, H6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling onUserInteraction() signal from creative; ")));
                    return;
                }
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(str2);
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
            while (keys.hasNext()) {
                String next = keys.next();
                Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlin.String");
                String str5 = next;
                Object obj = jSONObject.get(str5);
                Intrinsics.checkNotNull(obj);
                hashMap.put(str5, obj);
            }
            try {
                try {
                    this.f25359a.getListener().b(hashMap);
                } catch (Exception e11) {
                    this.f25359a.a(str, "Unexpected error", "incentCompleted");
                    InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                    if (interfaceC3269z53 != null) {
                        String str6 = AbstractC3222w6.f25388a;
                        Intrinsics.checkNotNullExpressionValue(str6, "access$getTAG$p(...)");
                        ((A5) interfaceC3269z53).b(str6, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; " + e11.getMessage());
                    }
                }
            } catch (Exception e12) {
                this.f25359a.a(str, "Unexpected error", "incentCompleted");
                InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
                if (interfaceC3269z54 != null) {
                    String str7 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z54).b(str7, rf.a(e12, H6.a(str7, "access$getTAG$p(...)", "SDK encountered unexpected error in handling onUserInteraction() signal from creative; ")));
                }
            }
        } catch (JSONException unused) {
            this.f25359a.getListener().b(new HashMap());
        }
    }

    @JavascriptInterface
    public final boolean isBackButtonDisabled(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "isBackButtonDisabled called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            a10 = this.f25359a;
        }
        return a10.H;
    }

    @JavascriptInterface
    @NotNull
    public final String isDeviceMuted(@Nullable String str) {
        AudioManager audioManager;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "isDeviceMuted called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return "false";
            }
            return "false";
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "JavaScript called: isDeviceMuted()");
        }
        boolean z10 = false;
        try {
            F7 mediaProcessor = this.f25359a.getMediaProcessor();
            Intrinsics.checkNotNull(mediaProcessor);
            InterfaceC3269z5 interfaceC3269z54 = mediaProcessor.f23646b;
            if (interfaceC3269z54 != null) {
                ((A5) interfaceC3269z54).c("MraidMediaProcessor", "isVolumeMuted");
            }
            Context d10 = Uc.d();
            if (d10 != null) {
                Object systemService = d10.getSystemService("audio");
                if (systemService instanceof AudioManager) {
                    audioManager = (AudioManager) systemService;
                } else {
                    audioManager = null;
                }
                if (audioManager != null) {
                    if (2 != audioManager.getRingerMode()) {
                        z10 = true;
                    }
                }
            }
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z55 = this.f25361c;
            if (interfaceC3269z55 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z55).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in checking if device is muted; ")));
            }
        }
        return String.valueOf(z10);
    }

    @JavascriptInterface
    @NotNull
    public final String isHeadphonePlugged(@Nullable String str) {
        boolean z10;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "isHeadphonePlugged called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return "false";
            }
            return "false";
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "JavaScript called: isHeadphonePlugged()");
        }
        try {
            F7 mediaProcessor = this.f25359a.getMediaProcessor();
            Intrinsics.checkNotNull(mediaProcessor);
            mediaProcessor.getClass();
            z10 = F7.b();
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in checking if headphones are plugged-in; ")));
            }
            z10 = false;
        }
        return String.valueOf(z10);
    }

    @JavascriptInterface
    public final boolean isViewable(@Nullable String str) {
        String str2 = AbstractC3222w6.f25388a;
        Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
            if (interfaceC3269z5 != null) {
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).b(str2, "Found a null instance of render view!");
            }
            return false;
        } else if (gestureDetector$OnGestureListenerC2941ec.F != EnumC2927df.f24613c) {
            return false;
        } else {
            return true;
        }
    }

    @JavascriptInterface
    public final void loadAd(@Nullable String str, int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, X8.a(str2, "access$getTAG$p(...)", "loadAd is called with index - ", i10));
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = a10.f24680i;
        if (interfaceC3269z53 != null) {
            String str4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z53).a(str4, Ob.a(a10, str4, "TAG", "loadPodAd "));
        }
        if (a10.F == EnumC2927df.f24613c && a10.f24683j0 != null && !a10.J.get()) {
            InterfaceC2861a0 interfaceC2861a0 = a10.f24683j0;
            if (interfaceC2861a0 != null) {
                interfaceC2861a0.a(i10, a10);
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = a10.f24680i;
        if (interfaceC3269z54 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z54).b(TAG, "Cannot load index pod ad as the current ad is not viewable");
        }
        a10.a(false);
    }

    @JavascriptInterface
    public final void loadWebView(@Nullable String str, @Nullable final String str2, @Nullable final String str3) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str4 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str4, I6.a(str4, "access$getTAG$p(...)", "loadWebView called with html: ", str3));
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 != null && a10.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str5 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str5, "loadWebView called on unloaded ad");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a11 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a11.put("errorCode", 108);
            gestureDetector$OnGestureListenerC2941ec.a("loadWebView", a11);
            return;
        }
        GestureDetector$OnGestureListenerC2941ec a12 = a();
        if (a12 != null && a12.getPlacementType() == 1) {
            if (str2 != null && !StringsKt.t0(str2)) {
                if (str3 != null && str3.length() != 0) {
                    ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
                    Runnable runnable = new Runnable() { // from class: ub.o7
                        @Override // java.lang.Runnable
                        public final void run() {
                            C3206v6.a(C3206v6.this, str2, str3);
                        }
                    };
                    executorC3096o7.getClass();
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    executorC3096o7.f25116a.post(runnable);
                    return;
                }
                this.f25359a.a("loadWebView", AbstractC3117pc.a(str2, 301));
                return;
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25359a;
            ms.i iVar2 = AbstractC3117pc.f25160a;
            JSONObject a13 = AbstractC2874ad.a("", "targetViewId", "id", "");
            a13.put("errorCode", 302);
            gestureDetector$OnGestureListenerC2941ec2.a("loadWebView", a13);
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str6 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str6, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).b(str6, "sibling creation not allowed for inline placement type");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec3 = this.f25359a;
        if (str2 == null) {
            str2 = "";
        }
        ms.i iVar3 = AbstractC3117pc.f25160a;
        JSONObject a14 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
        a14.put("errorCode", 312);
        gestureDetector$OnGestureListenerC2941ec3.a("loadWebView", a14);
    }

    @JavascriptInterface
    public final void log(@Nullable String str, @NotNull String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).c(str2, I6.a(str2, "access$getTAG$p(...)", "Log called. Message:", message));
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        gestureDetector$OnGestureListenerC2941ec.getClass();
        Gb gb2 = GestureDetector$OnGestureListenerC2941ec.Y0;
        gb2.getClass();
        if (((Boolean) GestureDetector$OnGestureListenerC2941ec.f24664b1.getValue(gb2, Gb.f23686a[0])).booleanValue() && message != null) {
            gestureDetector$OnGestureListenerC2941ec.getListener().a(message);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x007f, code lost:
        if (new org.json.JSONObject(r8).length() == 0) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00e5  */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void logTelemetryEvent(@org.jetbrains.annotations.Nullable java.lang.String r6, @org.jetbrains.annotations.Nullable java.lang.String r7, @org.jetbrains.annotations.Nullable java.lang.String r8) {
        /*
            r5 = this;
            java.lang.String r6 = "access$getTAG$p(...)"
            if (r7 != 0) goto L15
            com.inmobi.media.z5 r7 = r5.f25361c
            if (r7 == 0) goto L14
            java.lang.String r8 = com.inmobi.media.AbstractC3222w6.f25388a
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r8, r6)
            com.inmobi.media.A5 r7 = (com.inmobi.media.A5) r7
            java.lang.String r6 = "eventType is null"
            r7.b(r8, r6)
        L14:
            return
        L15:
            com.inmobi.media.z5 r0 = r5.f25361c
            if (r0 == 0) goto L29
            java.lang.String r1 = com.inmobi.media.AbstractC3222w6.f25388a
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r6)
            java.lang.String r6 = "logTelemetryEvent is called: "
            java.lang.String r6 = r6.concat(r7)
            com.inmobi.media.A5 r0 = (com.inmobi.media.A5) r0
            r0.a(r1, r6)
        L29:
            com.inmobi.media.ec r6 = r5.f25359a
            r6.getClass()
            java.lang.String r0 = "eventType"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            com.inmobi.media.nc r6 = r6.W
            if (r6 == 0) goto Lf3
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r7, r0)
            java.util.concurrent.atomic.AtomicBoolean r0 = r6.f25068g
            boolean r0 = r0.get()
            if (r0 == 0) goto L44
            goto Lf3
        L44:
            java.util.concurrent.atomic.AtomicInteger r0 = r6.f25067f
            int r0 = r0.decrementAndGet()
            if (r0 > 0) goto L73
            java.util.concurrent.atomic.AtomicBoolean r7 = r6.f25068g
            r8 = 1
            r7.set(r8)
            java.util.Map r7 = r6.a()
            long r0 = r6.f25064c
            java.util.concurrent.ScheduledExecutorService r6 = com.inmobi.media.Ie.f23745a
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r2 = r2 - r0
            java.lang.Long r6 = java.lang.Long.valueOf(r2)
            java.lang.String r8 = "latency"
            r7.put(r8, r6)
            com.inmobi.media.Pd r6 = com.inmobi.media.Pd.f23988a
            com.inmobi.media.Td r6 = com.inmobi.media.Td.f24224a
            java.lang.String r8 = "TemplateEventDropped"
            com.inmobi.media.Pd.b(r8, r7, r6)
            goto Lf3
        L73:
            if (r8 == 0) goto L98
            r0 = 0
            org.json.JSONObject r1 = new org.json.JSONObject     // Catch: org.json.JSONException -> L83
            r1.<init>(r8)     // Catch: org.json.JSONException -> L83
            int r1 = r1.length()     // Catch: org.json.JSONException -> L83
            if (r1 != 0) goto L98
        L81:
            r8 = r0
            goto L98
        L83:
            r8 = move-exception
            java.lang.String r1 = com.inmobi.media.Pd.f23989b
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            java.lang.String r3 = "Error parsing JSON: "
            r2.<init>(r3)
            r2.append(r8)
            java.lang.String r8 = r2.toString()
            android.util.Log.e(r1, r8)
            goto L81
        L98:
            com.inmobi.media.hc r0 = r6.f25062a
            java.lang.String r0 = r0.f24826k
            if (r0 != 0) goto La0
            java.lang.String r0 = ""
        La0:
            java.lang.String r1 = "trigger"
            kotlin.Pair r0 = ms.k.a(r1, r0)
            com.inmobi.media.hc r1 = r6.f25062a
            com.inmobi.media.Z r1 = r1.f24816a
            java.lang.String r1 = r1.m()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = "plType"
            kotlin.Pair r1 = ms.k.a(r2, r1)
            com.inmobi.media.hc r2 = r6.f25062a
            java.lang.String r2 = r2.f24817b
            java.lang.String r3 = "markupType"
            kotlin.Pair r2 = ms.k.a(r3, r2)
            java.lang.String r3 = com.inmobi.media.L3.q()
            java.lang.String r4 = "networkType"
            kotlin.Pair r3 = ms.k.a(r4, r3)
            kotlin.Pair[] r0 = new kotlin.Pair[]{r0, r1, r2, r3}
            java.util.Map r0 = kotlin.collections.p0.o(r0)
            if (r8 == 0) goto Ldb
            java.lang.String r1 = "payload"
            r0.put(r1, r8)
        Ldb:
            com.inmobi.media.hc r8 = r6.f25062a
            java.lang.String r8 = r8.f24818c
            int r8 = r8.length()
            if (r8 <= 0) goto Lee
            com.inmobi.media.hc r6 = r6.f25062a
            java.lang.String r6 = r6.f24818c
            java.lang.String r8 = "metadataBlob"
            r0.put(r8, r6)
        Lee:
            com.inmobi.media.Td r6 = com.inmobi.media.Td.f24225b
            com.inmobi.media.Pd.b(r7, r0, r6)
        Lf3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.C3206v6.logTelemetryEvent(java.lang.String, java.lang.String, java.lang.String):void");
    }

    @JavascriptInterface
    public final void onAudioStateChanged(@Nullable String str, int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, X8.a(str2, "access$getTAG$p(...)", "onAudioStateChanged is called: ", i10));
        }
        D1.f23554b.getClass();
        D1 d12 = (D1) D1.f23555c.get(i10);
        if (d12 == null) {
            d12 = D1.f23556d;
        }
        if (d12 != D1.f23556d) {
            this.f25359a.getListener().a(d12);
        }
    }

    @JavascriptInterface
    public final void onOrientationChange(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, ">>> onOrientationChange() >>> This API is deprecated!");
        }
    }

    @JavascriptInterface
    public final void onUserAudioMuteInteraction(@Nullable String str, boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "onAudioMuteInteraction is called: " + z10);
        }
        this.f25359a.getListener().a(z10);
    }

    @JavascriptInterface
    public final void onUserInteraction(@Nullable String str, @Nullable String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "onUserInteraction called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec != null && !gestureDetector$OnGestureListenerC2941ec.a()) {
            this.f25359a.a("onUserInteraction");
            return;
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
        if (interfaceC3269z52 != null) {
            String str4 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z52).a(str4, I6.a(str4, "access$getTAG$p(...)", "onUserInteraction called. Params:", str2));
        }
        if (str2 == null) {
            try {
                this.f25359a.getListener().a(new HashMap());
                return;
            } catch (Exception e10) {
                this.f25359a.a(str, "Unexpected error", "onUserInteraction");
                InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                if (interfaceC3269z53 != null) {
                    String str5 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z53).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling onUserInteraction() signal from creative; ")));
                    return;
                }
                return;
            }
        }
        try {
            JSONObject jSONObject = new JSONObject(str2);
            HashMap hashMap = new HashMap();
            Iterator<String> keys = jSONObject.keys();
            Intrinsics.checkNotNullExpressionValue(keys, "keys(...)");
            while (keys.hasNext()) {
                String next = keys.next();
                Intrinsics.checkNotNull(next, "null cannot be cast to non-null type kotlin.String");
                String str6 = next;
                Object obj = jSONObject.get(str6);
                Intrinsics.checkNotNull(obj);
                hashMap.put(str6, obj);
            }
            try {
                try {
                    this.f25359a.getListener().a(hashMap);
                } catch (Exception e11) {
                    this.f25359a.a(str, "Unexpected error", "onUserInteraction");
                    InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
                    if (interfaceC3269z54 != null) {
                        String str7 = AbstractC3222w6.f25388a;
                        Intrinsics.checkNotNullExpressionValue(str7, "access$getTAG$p(...)");
                        ((A5) interfaceC3269z54).b(str7, "SDK encountered unexpected error in handling onUserInteraction() signal from creative; " + e11.getMessage());
                    }
                }
            } catch (Exception e12) {
                this.f25359a.a(str, "Unexpected error", "onUserInteraction");
                InterfaceC3269z5 interfaceC3269z55 = this.f25361c;
                if (interfaceC3269z55 != null) {
                    String str8 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z55).b(str8, rf.a(e12, H6.a(str8, "access$getTAG$p(...)", "SDK encountered unexpected error in handling onUserInteraction() signal from creative; ")));
                }
            }
        } catch (JSONException unused) {
            this.f25359a.getListener().a(new HashMap());
        }
    }

    @JavascriptInterface
    public final void open(@Nullable final String str, @Nullable final String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "open called");
        }
        if (!this.f25359a.a()) {
            this.f25359a.a(MRAIDPresenter.OPEN);
            return;
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "open called on unloaded ad");
                return;
            }
            return;
        }
        gestureDetector$OnGestureListenerC2941ec.l();
        Md.a(new Runnable() { // from class: ub.a7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.b(C3206v6.this, str, str2);
            }
        });
    }

    @JavascriptInterface
    public final void openEmbedded(@Nullable final String str, @Nullable final String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "openEmbedded called");
        }
        if (!this.f25359a.a()) {
            this.f25359a.a("openEmbedded");
            return;
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "openEmbedded called on unloaded ad");
                return;
            }
            return;
        }
        gestureDetector$OnGestureListenerC2941ec.l();
        Md.a(new Runnable() { // from class: ub.p7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.c(C3206v6.this, str, str2);
            }
        });
    }

    @JavascriptInterface
    public final void openExternal(@Nullable String str, @NotNull String url, @Nullable String str2) {
        R6 r62;
        Intrinsics.checkNotNullParameter(url, "url");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "open External");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "Found a null instance of render view!");
            }
        } else if (!gestureDetector$OnGestureListenerC2941ec.a()) {
            this.f25359a.a("openExternal");
        } else {
            this.f25359a.l();
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z53).a(str5, I6.a(str5, "access$getTAG$p(...)", "openExternal called with url: ", url));
            }
            S6 s62 = this.f25359a.getLandingPageHandler().f23844f;
            if (s62 != null) {
                String a10 = J6.a(url);
                M6 landingPageHandler = this.f25359a.getLandingPageHandler();
                int i10 = landingPageHandler.f23846h + 1;
                landingPageHandler.f23846h = i10;
                r62 = new R6(s62, a10, i10, 8);
            } else {
                r62 = null;
            }
            if (r62 != null) {
                r62.f24066g = "EX_NATIVE";
            }
            M6 landingPageHandler2 = this.f25359a.getLandingPageHandler();
            F6 funnelState = F6.f23634d;
            landingPageHandler2.getClass();
            Intrinsics.checkNotNullParameter(funnelState, "funnelState");
            J6.a(funnelState, r62, (Integer) null, new L6(landingPageHandler2));
            M6 landingPageHandler3 = this.f25359a.getLandingPageHandler();
            landingPageHandler3.getClass();
            Intrinsics.checkNotNullParameter("openExternal", "api");
            if (url != null) {
                landingPageHandler3.e(str, url, str2, r62);
            } else if (str2 != null) {
                landingPageHandler3.e(str, str2, null, r62);
            } else {
                F6 funnelState2 = F6.f23635e;
                Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                J6.a(funnelState2, r62, (Integer) 2, (Function2) new L6(landingPageHandler3));
                Ub ub2 = landingPageHandler3.f23842d;
                if (ub2 != null) {
                    Intrinsics.checkNotNullParameter("Empty url and fallback url", "message");
                    ub2.f24266a.a(str, "Empty url and fallback url", "openExternal");
                }
                InterfaceC3269z5 interfaceC3269z54 = landingPageHandler3.f23845g;
                if (interfaceC3269z54 != null) {
                    Intrinsics.checkNotNullExpressionValue("M6", "TAG");
                    ((A5) interfaceC3269z54).b("M6", "Empty deeplink and fallback urls");
                }
            }
        }
    }

    @JavascriptInterface
    public final void openWithoutTracker(@Nullable final String str, @Nullable final String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "openWithoutTracker called");
        }
        if (!this.f25359a.a()) {
            this.f25359a.a("openWithoutTracker");
        } else if (this.f25359a.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "openWithoutTracker called on unloaded ad");
            }
        } else {
            Md.a(new Runnable() { // from class: ub.g7
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.d(C3206v6.this, str, str2);
                }
            });
        }
    }

    @JavascriptInterface
    public final void ping(@Nullable String str, @Nullable String str2, boolean z10) {
        int i10;
        boolean z11;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "ping called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i11 = 0;
            boolean z12 = false;
            while (i11 <= length) {
                if (!z12) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) str2.charAt(i10), 32) <= 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (!z12) {
                    if (!z11) {
                        z12 = true;
                    } else {
                        i11++;
                    }
                } else if (!z11) {
                    break;
                } else {
                    length--;
                }
            }
            if (str2.subSequence(i11, length + 1).toString().length() != 0 && URLUtil.isValidUrl(str2)) {
                InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                if (interfaceC3269z53 != null) {
                    String str5 = AbstractC3222w6.f25388a;
                    Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z53).a(str5, "JavaScript called ping() URL: >>> " + str2 + " <<<");
                }
                try {
                    C3234x2.f25412a.a(str2, z10, this.f25361c);
                    return;
                } catch (Exception e10) {
                    this.f25359a.a(str, "Unexpected error", "ping");
                    AbstractC2984h7.a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                    InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
                    if (interfaceC3269z54 != null) {
                        String str6 = AbstractC3222w6.f25388a;
                        ((A5) interfaceC3269z54).b(str6, rf.a(e10, H6.a(str6, "access$getTAG$p(...)", "SDK encountered unexpected error in handling ping() request from creative; ")));
                        return;
                    }
                    return;
                }
            }
        }
        this.f25359a.a(str, "Invalid URL:" + str2, "ping");
    }

    @JavascriptInterface
    public final void pingInWebView(@Nullable String str, @Nullable String str2, boolean z10) {
        int i10;
        boolean z11;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "openInWebView called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i11 = 0;
            boolean z12 = false;
            while (i11 <= length) {
                if (!z12) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) str2.charAt(i10), 32) <= 0) {
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (!z12) {
                    if (!z11) {
                        z12 = true;
                    } else {
                        i11++;
                    }
                } else if (!z11) {
                    break;
                } else {
                    length--;
                }
            }
            if (str2.subSequence(i11, length + 1).toString().length() != 0 && URLUtil.isValidUrl(str2)) {
                InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                if (interfaceC3269z53 != null) {
                    String str5 = AbstractC3222w6.f25388a;
                    Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z53).a(str5, "JavaScript called pingInWebView() URL: >>> " + str2 + " <<<");
                }
                try {
                    C3234x2.f25412a.b(str2, z10, this.f25361c);
                    return;
                } catch (Exception e10) {
                    this.f25359a.a(str, "Unexpected error", "pingInWebView");
                    AbstractC2984h7.a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                    InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
                    if (interfaceC3269z54 != null) {
                        String str6 = AbstractC3222w6.f25388a;
                        ((A5) interfaceC3269z54).b(str6, rf.a(e10, H6.a(str6, "access$getTAG$p(...)", "SDK encountered unexpected error in handling pingInWebView() request from creative; ")));
                        return;
                    }
                    return;
                }
            }
        }
        this.f25359a.a(str, "Invalid URL:" + str2, "pingInWebView");
    }

    @JavascriptInterface
    public final void pingV2(@Nullable String str, @NotNull String pingJson) {
        Intrinsics.checkNotNullParameter(pingJson, "pingJson");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "pingV2 called with JSON: >>> " + pingJson + " <<<");
        }
        try {
            this.f25359a.b(pingJson);
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "ping");
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
            gestureDetector$OnGestureListenerC2941ec.getClass();
            Intrinsics.checkNotNullParameter(e10, "e");
            InterfaceC3269z5 interfaceC3269z52 = gestureDetector$OnGestureListenerC2941ec.f24680i;
            if (interfaceC3269z52 != null) {
                String str3 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                ((A5) interfaceC3269z52).a(str3, Ob.a(gestureDetector$OnGestureListenerC2941ec, str3, "TAG", "handlePingException "), e10);
            }
            Ha ha2 = gestureDetector$OnGestureListenerC2941ec.f24688m;
            EnumC3077n4[] enumC3077n4Arr = EnumC3077n4.f25050a;
            ((Yb) ha2).a("", -107, "Ping exception occurred", System.currentTimeMillis(), 0);
            S5 s52 = S5.f24132a;
            S5.f24135d.a(AbstractC3221w5.a(e10, NotificationCompat.CATEGORY_EVENT));
            AbstractC2984h7.a((byte) 1, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str4 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z53).b(str4, rf.a(e10, H6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling ping() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void playVideo(@Nullable final String str, @Nullable final String str2) {
        int i10;
        boolean z10;
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
            if (interfaceC3269z5 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        if (str2 != null) {
            int length = str2.length() - 1;
            int i11 = 0;
            boolean z11 = false;
            while (i11 <= length) {
                if (!z11) {
                    i10 = i11;
                } else {
                    i10 = length;
                }
                if (Intrinsics.compare((int) str2.charAt(i10), 32) <= 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z11) {
                    if (!z10) {
                        z11 = true;
                    } else {
                        i11++;
                    }
                } else if (!z10) {
                    break;
                } else {
                    length--;
                }
            }
            if (str2.subSequence(i11, length + 1).toString().length() != 0 && StringsKt.V(str2, ProxyConfig.MATCH_HTTP, false, 2, null) && (StringsKt.F(str2, TTVideoEngineInterface.FORMAT_TYPE_MP4, false, 2, null) || StringsKt.F(str2, "avi", false, 2, null) || StringsKt.F(str2, "m4v", false, 2, null))) {
                InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
                if (interfaceC3269z52 != null) {
                    String str4 = AbstractC3222w6.f25388a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z52).a(str4, "JavaScript called: playVideo (" + str2 + ')');
                }
                new Handler(this.f25359a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: ub.l7
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3206v6.e(C3206v6.this, str, str2);
                    }
                });
                return;
            }
        }
        this.f25359a.a(str, "Null or empty or invalid media playback URL supplied", "playVideo");
    }

    @JavascriptInterface
    public final void registerBackButtonPressedEventListener(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "registerBackButtonPressedEventListener called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
            if (interfaceC3269z53 != null) {
                String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z53).a(TAG, "registerBackButtonPressedEventListener " + gestureDetector$OnGestureListenerC2941ec);
            }
            gestureDetector$OnGestureListenerC2941ec.I = str;
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "registerBackButtonPressedEventListener");
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str4 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str4, rf.a(e10, H6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerBackButtonPressedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void registerDeviceMuteEventListener(@Nullable String jsCallbackNamespace) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str, "registerDeviceMuteEventListener called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str2, "Found a null instance of render view!");
            }
        } else if (jsCallbackNamespace != null) {
            try {
                F7 mediaProcessor = gestureDetector$OnGestureListenerC2941ec.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    if (mediaProcessor.f23648d == null) {
                        C3159s7 c3159s7 = new C3159s7(new C7(mediaProcessor, jsCallbackNamespace));
                        mediaProcessor.f23648d = c3159s7;
                        c3159s7.b();
                    }
                }
            } catch (Exception e10) {
                this.f25359a.a(jsCallbackNamespace, "Unexpected error", "registerDeviceMuteEventListener");
                InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                if (interfaceC3269z53 != null) {
                    String str3 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z53).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerDeviceMuteEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void registerDeviceVolumeChangeEventListener(@Nullable String jsCallbackNamespace) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str, "registerDeviceVolumeChangeEventListener called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str2, "Found a null instance of render view!");
            }
        } else if (jsCallbackNamespace != null) {
            try {
                F7 mediaProcessor = gestureDetector$OnGestureListenerC2941ec.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    Context d10 = Uc.d();
                    if (d10 != null && mediaProcessor.f23649e == null) {
                        C3159s7 c3159s7 = new C3159s7(new D7(mediaProcessor, jsCallbackNamespace, d10, new Handler(Looper.getMainLooper())));
                        mediaProcessor.f23649e = c3159s7;
                        c3159s7.b();
                    }
                }
            } catch (Exception e10) {
                this.f25359a.a(jsCallbackNamespace, "Unexpected error", "registerDeviceVolumeChangeEventListener");
                InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                if (interfaceC3269z53 != null) {
                    String str3 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z53).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerDeviceVolumeChangeEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void registerHeadphonePluggedEventListener(@Nullable String jsCallbackNamespace) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str, "registerHeadphonePluggedEventListener called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str2 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str2, "Found a null instance of render view!");
            }
        } else if (jsCallbackNamespace != null) {
            try {
                F7 mediaProcessor = gestureDetector$OnGestureListenerC2941ec.getMediaProcessor();
                if (mediaProcessor != null) {
                    Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
                    if (mediaProcessor.f23650f == null) {
                        C3159s7 c3159s7 = new C3159s7(new B7(mediaProcessor, jsCallbackNamespace));
                        mediaProcessor.f23650f = c3159s7;
                        c3159s7.b();
                    }
                }
            } catch (Exception e10) {
                this.f25359a.a(jsCallbackNamespace, "Unexpected error", "registerHeadphonePluggedEventListener");
                InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
                if (interfaceC3269z53 != null) {
                    String str3 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z53).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling registerHeadphonePluggedEventListener() request from creative; ")));
                }
            }
        }
    }

    @JavascriptInterface
    public final void saveBlob(@Nullable String str, @Nullable String str2) {
        InterfaceC2880b2 interfaceC2880b2;
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "saveBlob is called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z53).a(TAG, "saveBlob");
        }
        if (str2 != null && (interfaceC2880b2 = gestureDetector$OnGestureListenerC2941ec.f24675f0) != null) {
            ((S0) interfaceC2880b2).a(str2, gestureDetector$OnGestureListenerC2941ec.getImpressionId());
        }
    }

    @JavascriptInterface
    public final void saveContent(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        if (str2 != null && str2.length() != 0 && str3 != null && str3.length() != 0) {
            try {
                this.f25359a.b(str, str2, str3);
                return;
            } catch (Exception e10) {
                this.f25359a.a(str, "Unexpected error", "saveContent");
                InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
                if (interfaceC3269z5 != null) {
                    String str4 = AbstractC3222w6.f25388a;
                    ((A5) interfaceC3269z5).b(str4, rf.a(e10, H6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling saveContent() request from creative; ")));
                    return;
                }
                return;
            }
        }
        InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
        if (interfaceC3269z52 != null) {
            String str5 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
            ((A5) interfaceC3269z52).a(str5, "saveContent called with invalid parameters");
        }
        JSONObject jSONObject = new JSONObject();
        if (str3 == null) {
            str3 = "";
        }
        try {
            jSONObject.put("url", str3);
            jSONObject.put("reason", 8);
        } catch (JSONException unused) {
        }
        String jSONObject2 = jSONObject.toString();
        Intrinsics.checkNotNullExpressionValue(jSONObject2, "toString(...)");
        String P = StringsKt.P(jSONObject2, "\"", "\\\"", false, 4, null);
        StringBuilder sb2 = new StringBuilder("sendSaveContentResult(\"saveContent_");
        if (str2 == null) {
            str2 = "";
        }
        sb2.append(str2);
        sb2.append("\", 'failed', \"");
        sb2.append(P);
        sb2.append("\");");
        this.f25359a.a(str, sb2.toString());
    }

    @JavascriptInterface
    public final void sendMessage(@Nullable String str, @Nullable final String str2, @Nullable final String str3) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str4 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str4, I6.a(str4, "access$getTAG$p(...)", "sendMessage called with message: ", str3));
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 != null && a10.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str5 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str5, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str5, "sendMessage called on unloaded ad");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a11 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a11.put("errorCode", 108);
            gestureDetector$OnGestureListenerC2941ec.a("sendMessage", a11);
        } else if (str2 != null && !StringsKt.t0(str2)) {
            if (str3 != null && !StringsKt.t0(str3)) {
                ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
                Runnable runnable = new Runnable() { // from class: ub.c7
                    @Override // java.lang.Runnable
                    public final void run() {
                        C3206v6.f(C3206v6.this, str2, str3);
                    }
                };
                executorC3096o7.getClass();
                Intrinsics.checkNotNullParameter(runnable, "runnable");
                executorC3096o7.f25116a.post(runnable);
                return;
            }
            this.f25359a.a("sendMessage", AbstractC3117pc.a(str2, 301));
        } else {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar2 = AbstractC3117pc.f25160a;
            JSONObject a12 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a12.put("errorCode", 302);
            gestureDetector$OnGestureListenerC2941ec2.a("sendMessage", a12);
        }
    }

    @JavascriptInterface
    public final void setAdContext(@Nullable String str, @NotNull String podAdContext) {
        Intrinsics.checkNotNullParameter(podAdContext, "podAdContext");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "setAdContext is called ", podAdContext));
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
                return;
            }
            return;
        }
        InterfaceC2861a0 adPodHandler = a10.getAdPodHandler();
        if (adPodHandler != null) {
            ((S0) adPodHandler).d(podAdContext);
        }
    }

    @JavascriptInterface
    public final void setCloseEndCardTracker(@Nullable String str, @Nullable String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "setCloseEndCardTracker is called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            gestureDetector$OnGestureListenerC2941ec.setCloseEndCardTracker(str2);
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "getDownloadStatus");
            InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
            if (interfaceC3269z53 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z53).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling getDownloadStatus() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void setOrientationProperties(@Nullable String str, @NotNull final String orientationPropertiesString) {
        Intrinsics.checkNotNullParameter(orientationPropertiesString, "orientationPropertiesString");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "setOrientationProperties called: ", orientationPropertiesString));
        }
        ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
        Runnable runnable = new Runnable() { // from class: ub.b7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.b(C3206v6.this, orientationPropertiesString);
            }
        };
        executorC3096o7.getClass();
        Intrinsics.checkNotNullParameter(runnable, "runnable");
        executorC3096o7.f25116a.post(runnable);
    }

    @JavascriptInterface
    public final void showAd(@Nullable String str, int i10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, X8.a(str2, "access$getTAG$p(...)", "showAd is called with index ", i10));
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = a10.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z53).a(TAG, "showPodAdAtIndex " + a10 + ' ' + i10);
        }
        if (a10.F == EnumC2927df.f24613c && a10.f24683j0 != null && !a10.J.get()) {
            InterfaceC2861a0 interfaceC2861a0 = a10.f24683j0;
            if (interfaceC2861a0 != null) {
                interfaceC2861a0.a(i10, a10, a10.getFullScreenActivity());
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z54 = a10.f24680i;
        if (interfaceC3269z54 != null) {
            String TAG2 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            ((A5) interfaceC3269z54).b(TAG2, "Cannot show index pod ad as the current ad is not viewable");
        }
        a10.b(false);
    }

    @JavascriptInterface
    public final void showAlert(@Nullable String str, @NotNull String alert) {
        Intrinsics.checkNotNullParameter(alert, "alert");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "showAlert: ", alert));
        }
    }

    @JavascriptInterface
    public final void showEndCard(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "showEndCard is called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
        if (interfaceC3269z53 != null) {
            String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            ((A5) interfaceC3269z53).a(TAG, "showEndCardFromInterActive");
        }
        InterfaceC3231x referenceContainer = gestureDetector$OnGestureListenerC2941ec.getReferenceContainer();
        if (referenceContainer instanceof T7) {
            ((T7) referenceContainer).o();
        }
    }

    @JavascriptInterface
    public final void showWebView(@Nullable String str, @Nullable final String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "showEndCard called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 != null && a10.K0) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str4 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str4, "showWebView called on unloaded ad");
            }
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar = AbstractC3117pc.f25160a;
            JSONObject a11 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a11.put("errorCode", 108);
            gestureDetector$OnGestureListenerC2941ec.a("showWebView", a11);
        } else if (str2 != null && str2.length() != 0) {
            ExecutorC3096o7 executorC3096o7 = (ExecutorC3096o7) AbstractC3268z4.f25482d.getValue();
            Runnable runnable = new Runnable() { // from class: ub.e7
                @Override // java.lang.Runnable
                public final void run() {
                    C3206v6.c(C3206v6.this, str2);
                }
            };
            executorC3096o7.getClass();
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            executorC3096o7.f25116a.post(runnable);
        } else {
            GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec2 = this.f25359a;
            if (str2 == null) {
                str2 = "";
            }
            ms.i iVar2 = AbstractC3117pc.f25160a;
            JSONObject a12 = AbstractC2874ad.a(str2, "targetViewId", "id", str2);
            a12.put("errorCode", 302);
            gestureDetector$OnGestureListenerC2941ec2.a("showWebView", a12);
        }
    }

    @JavascriptInterface
    public final void storePicture(@Nullable String str, @Nullable String str2) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str3, "storePicture is deprecated and no-op. ");
        }
    }

    @JavascriptInterface
    public final void submitAdReport(@Nullable String str, @NotNull String adQualityUrl, @NotNull String enableUserAdReportScreenshot, @NotNull String templateInfo) {
        Intrinsics.checkNotNullParameter(adQualityUrl, "adQualityUrl");
        Intrinsics.checkNotNullParameter(enableUserAdReportScreenshot, "enableUserAdReportScreenshot");
        Intrinsics.checkNotNullParameter(templateInfo, "templateInfo");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "submitAdReport called");
        }
        this.f25359a.a(adQualityUrl, templateInfo, Intrinsics.areEqual(enableUserAdReportScreenshot, "1"));
    }

    @JavascriptInterface
    @NotNull
    public final String supports(@Nullable String str, @NotNull String feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            ((A5) interfaceC3269z5).a(str2, I6.a(str2, "access$getTAG$p(...)", "Checking support for: ", feature));
        }
        String valueOf = String.valueOf(this.f25359a.f(feature));
        InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
        if (interfaceC3269z52 != null) {
            String str3 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
            ((A5) interfaceC3269z52).c(str3, "Message:" + feature + " support: " + valueOf);
        }
        return valueOf;
    }

    @JavascriptInterface
    public final long timeSinceShow(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "timeSinceShow is called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of ad render view!");
            }
            return 0L;
        }
        InterfaceC3269z5 interfaceC3269z53 = a10.f24680i;
        if (interfaceC3269z53 != null) {
            String str4 = GestureDetector$OnGestureListenerC2941ec.f24663a1;
            ((A5) interfaceC3269z53).c(str4, Ob.a(a10, str4, "TAG", "timeSincePodShow "));
        }
        InterfaceC2861a0 interfaceC2861a0 = a10.f24683j0;
        if (interfaceC2861a0 == null) {
            return 0L;
        }
        return ((S0) interfaceC2861a0).A0();
    }

    @JavascriptInterface
    public final void unload(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "unload called");
        }
        GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            a10 = this.f25359a;
        }
        try {
            a10.q();
        } catch (Exception e10) {
            a10.a(str, "Unexpected error", "unload");
            AbstractC2984h7.a((byte) 1, "InMobi", "Failed to unload ad; SDK encountered an unexpected error");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z52).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered an expected error in handling the unload() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterBackButtonPressedEventListener(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "unregisterBackButtonPressedEventListener called");
        }
        GestureDetector$OnGestureListenerC2941ec gestureDetector$OnGestureListenerC2941ec = this.f25359a;
        if (gestureDetector$OnGestureListenerC2941ec == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        try {
            InterfaceC3269z5 interfaceC3269z53 = gestureDetector$OnGestureListenerC2941ec.f24680i;
            if (interfaceC3269z53 != null) {
                String TAG = GestureDetector$OnGestureListenerC2941ec.f24663a1;
                Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
                ((A5) interfaceC3269z53).a(TAG, "unregisterBackButtonPressedEventListener " + gestureDetector$OnGestureListenerC2941ec);
            }
            gestureDetector$OnGestureListenerC2941ec.I = null;
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "unregisterBackButtonPressedEventListener");
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str4 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str4, rf.a(e10, H6.a(str4, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterBackButtonPressedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterDeviceMuteEventListener(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "unregisterDeviceMuteEventListener called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "Unregister device mute event listener ...");
        }
        try {
            F7 mediaProcessor = this.f25359a.getMediaProcessor();
            if (mediaProcessor != null) {
                C3159s7 c3159s7 = mediaProcessor.f23648d;
                if (c3159s7 != null) {
                    c3159s7.a();
                }
                mediaProcessor.f23648d = null;
            }
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "unRegisterDeviceMuteEventListener");
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterDeviceMuteEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterDeviceVolumeChangeEventListener(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "unregisterDeviceVolumeChangeEventListener called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "Unregister device volume change listener ...");
        }
        try {
            F7 mediaProcessor = this.f25359a.getMediaProcessor();
            if (mediaProcessor != null) {
                C3159s7 c3159s7 = mediaProcessor.f23649e;
                if (c3159s7 != null) {
                    c3159s7.a();
                }
                mediaProcessor.f23649e = null;
            }
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "unregisterDeviceVolumeChangeEventListener");
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterDeviceVolumeChangeEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void unregisterHeadphonePluggedEventListener(@Nullable String str) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "unregisterHeadphonePluggedEventListener called");
        }
        if (this.f25359a == null) {
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        InterfaceC3269z5 interfaceC3269z53 = this.f25361c;
        if (interfaceC3269z53 != null) {
            String str4 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
            ((A5) interfaceC3269z53).a(str4, "Unregister headphone plugged event listener ...");
        }
        try {
            F7 mediaProcessor = this.f25359a.getMediaProcessor();
            if (mediaProcessor != null) {
                C3159s7 c3159s7 = mediaProcessor.f23650f;
                if (c3159s7 != null) {
                    c3159s7.a();
                }
                mediaProcessor.f23650f = null;
            }
        } catch (Exception e10) {
            this.f25359a.a(str, "Unexpected error", "unregisterHeadphonePluggedEventListener");
            InterfaceC3269z5 interfaceC3269z54 = this.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling unregisterHeadphonePluggedEventListener() request from creative; ")));
            }
        }
    }

    @JavascriptInterface
    public final void useCustomClose(@Nullable final String str, final boolean z10) {
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str2 = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str2, "useCustomClose called:" + z10);
        }
        final GestureDetector$OnGestureListenerC2941ec a10 = a();
        if (a10 == null) {
            this.f25359a.a(str, "Unexpected error", "useCustomClose");
            InterfaceC3269z5 interfaceC3269z52 = this.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).b(str3, "Found a null instance of render view!");
                return;
            }
            return;
        }
        new Handler(a10.getContainerContext().getMainLooper()).post(new Runnable() { // from class: ub.i7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.b(GestureDetector$OnGestureListenerC2941ec.this, z10, this, str);
            }
        });
    }

    @JavascriptInterface
    public final void zoom(@NotNull String jsCallbackNamespace, final int i10) {
        Intrinsics.checkNotNullParameter(jsCallbackNamespace, "jsCallbackNamespace");
        InterfaceC3269z5 interfaceC3269z5 = this.f25361c;
        if (interfaceC3269z5 != null) {
            String str = AbstractC3222w6.f25388a;
            Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
            ((A5) interfaceC3269z5).a(str, "zoom is called " + jsCallbackNamespace + ' ' + i10);
        }
        Md.a(new Runnable() { // from class: ub.n7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.a(C3206v6.this, i10);
            }
        });
    }

    public static final void b(C3206v6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25359a.r();
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str, rf.a(e10, H6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in getting/setting current position; ")));
            }
        }
    }

    public static final void b(C3206v6 this$0, String json) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(json, "$orientationPropertiesString");
        C3146ra op2 = this$0.f25359a.getOrientationProperties();
        Intrinsics.checkNotNullParameter(json, "json");
        Intrinsics.checkNotNullParameter(op2, "op");
        C3146ra c3146ra = new C3146ra();
        c3146ra.f25245d = json;
        try {
            JSONObject jSONObject = new JSONObject(json);
            String optString = jSONObject.optString("forceOrientation", op2.f25243b);
            Intrinsics.checkNotNullExpressionValue(optString, "optString(...)");
            Intrinsics.checkNotNullParameter(optString, "<set-?>");
            c3146ra.f25243b = optString;
            c3146ra.f25242a = jSONObject.optBoolean("allowOrientationChange", op2.f25242a);
            String optString2 = jSONObject.optString(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION, op2.f25244c);
            Intrinsics.checkNotNullExpressionValue(optString2, "optString(...)");
            Intrinsics.checkNotNullParameter(optString2, "<set-?>");
            c3146ra.f25244c = optString2;
            if (!Intrinsics.areEqual(c3146ra.f25243b, "portrait") && !Intrinsics.areEqual(c3146ra.f25243b, "landscape")) {
                Intrinsics.checkNotNullParameter(DevicePublicKeyStringDef.NONE, "<set-?>");
                c3146ra.f25243b = DevicePublicKeyStringDef.NONE;
            }
            if (!Intrinsics.areEqual(c3146ra.f25244c, TtmlNode.LEFT) && !Intrinsics.areEqual(c3146ra.f25244c, TtmlNode.RIGHT)) {
                Intrinsics.checkNotNullParameter(TtmlNode.RIGHT, "<set-?>");
                c3146ra.f25244c = TtmlNode.RIGHT;
            }
        } catch (JSONException unused) {
            c3146ra = null;
        }
        if (c3146ra != null) {
            this$0.f25359a.getWebViewFactory().a(new C3190u6(this$0, c3146ra));
        }
    }

    public final void a(final String str, final String str2, final int i10, final float f10, final boolean z10, final R6 r62) {
        if (r62 != null) {
            r62.f24066g = "IN_CUSTOM";
        }
        new Handler(this.f25359a.getContainerContext().getMainLooper()).post(new Runnable() { // from class: ub.m7
            @Override // java.lang.Runnable
            public final void run() {
                C3206v6.a(C3206v6.this, r62, str2, i10, str, f10, z10);
            }
        });
    }

    public static final void a(C3206v6 this$0, R6 r62, String expandInput, int i10, String str, float f10, boolean z10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(expandInput, "$expandInput");
        try {
            if (this$0.f25359a.getEmbeddedBrowserJsCallbacks() == null) {
                InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
                if (interfaceC3269z5 != null) {
                    String str2 = AbstractC3222w6.f25388a;
                    Intrinsics.checkNotNullExpressionValue(str2, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z5).b(str2, "Found a null instance of EmbeddedBrowserJSCallback instance to customExpand");
                }
                M6 landingPageHandler = this$0.f25359a.getLandingPageHandler();
                F6 funnelState = F6.f23635e;
                landingPageHandler.getClass();
                Intrinsics.checkNotNullParameter(funnelState, "funnelState");
                J6.a(funnelState, r62, (Integer) 8002, (Function2) new L6(landingPageHandler));
                return;
            }
            InterfaceC3269z5 interfaceC3269z52 = this$0.f25361c;
            if (interfaceC3269z52 != null) {
                String str3 = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str3, "access$getTAG$p(...)");
                ((A5) interfaceC3269z52).a(str3, "Custom expand called. Url: " + expandInput);
            }
            Z3 z32 = Z3.values()[i10];
            if (z32 == Z3.f24433a) {
                int a10 = this$0.f25359a.getLandingPageHandler().a("customExpand", str, expandInput, r62, null);
                InterfaceC3269z5 interfaceC3269z53 = this$0.f25361c;
                if (interfaceC3269z53 != null) {
                    String str4 = AbstractC3222w6.f25388a;
                    Intrinsics.checkNotNullExpressionValue(str4, "access$getTAG$p(...)");
                    ((A5) interfaceC3269z53).a(str4, "processCustomExpandRequest: " + a10);
                }
                if (a10 == 3) {
                    InterfaceC2865a4 embeddedBrowserJsCallbacks = this$0.f25359a.getEmbeddedBrowserJsCallbacks();
                    if (embeddedBrowserJsCallbacks != null) {
                        ((C2982h5) embeddedBrowserJsCallbacks).a(expandInput, z32, f10, z10, this$0.f25359a.getViewTouchTimestamp(), r62);
                    }
                    M6 landingPageHandler2 = this$0.f25359a.getLandingPageHandler();
                    F6 funnelState2 = F6.f23636f;
                    landingPageHandler2.getClass();
                    Intrinsics.checkNotNullParameter(funnelState2, "funnelState");
                    J6.a(funnelState2, r62, (Integer) null, new L6(landingPageHandler2));
                    Ub ub2 = this$0.f25359a.getLandingPageHandler().f23842d;
                    if (ub2 != null) {
                        GestureDetector$OnGestureListenerC2941ec.a(ub2.f24266a, "customExpand", str, expandInput);
                        return;
                    }
                    return;
                }
                InterfaceC2865a4 embeddedBrowserJsCallbacks2 = this$0.f25359a.getEmbeddedBrowserJsCallbacks();
                if (embeddedBrowserJsCallbacks2 != null) {
                    C3014j5.a(((C2982h5) embeddedBrowserJsCallbacks2).f24807a);
                    return;
                }
                return;
            }
            InterfaceC2865a4 embeddedBrowserJsCallbacks3 = this$0.f25359a.getEmbeddedBrowserJsCallbacks();
            if (embeddedBrowserJsCallbacks3 != null) {
                ((C2982h5) embeddedBrowserJsCallbacks3).a(expandInput, z32, f10, z10, this$0.f25359a.getViewTouchTimestamp(), r62);
            }
            M6 landingPageHandler3 = this$0.f25359a.getLandingPageHandler();
            F6 funnelState3 = F6.f23636f;
            landingPageHandler3.getClass();
            Intrinsics.checkNotNullParameter(funnelState3, "funnelState");
            J6.a(funnelState3, r62, (Integer) null, new L6(landingPageHandler3));
            Ub ub3 = this$0.f25359a.getLandingPageHandler().f23842d;
            if (ub3 != null) {
                GestureDetector$OnGestureListenerC2941ec.a(ub3.f24266a, "customExpand", str, expandInput);
            }
        } catch (Exception e10) {
            this$0.f25359a.a(str, "Unexpected error", "customExpand");
            M6 landingPageHandler4 = this$0.f25359a.getLandingPageHandler();
            F6 funnelState4 = F6.f23635e;
            landingPageHandler4.getClass();
            Intrinsics.checkNotNullParameter(funnelState4, "funnelState");
            J6.a(funnelState4, r62, (Integer) 9, (Function2) new L6(landingPageHandler4));
            AbstractC2984h7.a((byte) 1, "InMobi", "Failed to custom expand ad; SDK encountered an unexpected error");
            InterfaceC3269z5 interfaceC3269z54 = this$0.f25361c;
            if (interfaceC3269z54 != null) {
                String str5 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z54).b(str5, rf.a(e10, H6.a(str5, "access$getTAG$p(...)", "SDK encountered unexpected error in handling customExpand() request; ")));
            }
        }
    }

    public static final void c(C3206v6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25359a.s();
        } catch (Exception e10) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str, rf.a(e10, H6.a(str, "access$getTAG$p(...)", "SDK encountered unexpected error in getting/setting default position; ")));
            }
        }
    }

    public static final void c(C3206v6 this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25359a.getSiblingWebviewManager().b(this$0.f25359a.getRoute().f23551b, str);
        } catch (Exception e10) {
            this$0.f25359a.a("showWebView", AbstractC3117pc.a(str, 309));
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in handling showEndCard() request from creative; ")));
            }
        }
    }

    public static final void b(GestureDetector$OnGestureListenerC2941ec adRenderView, boolean z10, C3206v6 this$0, String str) {
        Intrinsics.checkNotNullParameter(adRenderView, "$adRenderView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            adRenderView.e(z10);
        } catch (Exception e10) {
            this$0.f25359a.a(str, "Unexpected error", "useCustomClose");
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "SDK encountered internal error in handling useCustomClose() request from creative; ")));
            }
        }
    }

    public static final void a(C3206v6 this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (this$0.f25359a.getEmbeddedBrowserJsCallbacks() == null) {
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str = AbstractC3222w6.f25388a;
                Intrinsics.checkNotNullExpressionValue(str, "access$getTAG$p(...)");
                ((A5) interfaceC3269z5).b(str, "Found a null instance of EmbeddedBrowserJSCallback instance to closeCustomExpand");
                return;
            }
            return;
        }
        InterfaceC2865a4 embeddedBrowserJsCallbacks = this$0.f25359a.getEmbeddedBrowserJsCallbacks();
        if (embeddedBrowserJsCallbacks != null) {
            C3014j5.a(((C2982h5) embeddedBrowserJsCallbacks).f24807a);
        }
    }

    public static final void a(GestureDetector$OnGestureListenerC2941ec it, C3206v6 this$0, String str) {
        Intrinsics.checkNotNullParameter(it, "$it");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            it.i();
        } catch (Exception e10) {
            this$0.f25359a.a(str, "Unexpected error", "close");
            AbstractC2984h7.a((byte) 1, "InMobi", "Failed to close ad; SDK encountered an unexpected error");
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "SDK encountered an expected error in handling the close() request from creative; ")));
            }
        }
    }

    public static final void a(GestureDetector$OnGestureListenerC2941ec adRenderView, boolean z10, C3206v6 this$0, String str) {
        Intrinsics.checkNotNullParameter(adRenderView, "$adRenderView");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            adRenderView.d(z10);
        } catch (Exception e10) {
            this$0.f25359a.a(str, "Unexpected error", "disableCloseRegion");
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in handling disableCloseRegion() request from creative; ")));
            }
        }
    }

    public static final void a(C3206v6 this$0, int i10) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f25359a.setInitialScale(i10);
    }

    public static final void a(C3206v6 this$0, String str, String str2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25359a.getSiblingWebviewManager().a(this$0.f25359a.getRoute().f23551b, str, str2);
        } catch (Exception e10) {
            this$0.f25359a.a("loadWebView", AbstractC3117pc.a(str, 308));
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str3 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str3, rf.a(e10, H6.a(str3, "access$getTAG$p(...)", "SDK encountered unexpected error in handling loadWebView() request from creative; ")));
            }
        }
    }

    public static final void a(C3206v6 this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        try {
            this$0.f25359a.getSiblingWebviewManager().a(this$0.f25359a.getRoute().f23551b, str);
        } catch (Exception e10) {
            this$0.f25359a.a("destroyWebView", AbstractC3117pc.a(str, 311));
            InterfaceC3269z5 interfaceC3269z5 = this$0.f25361c;
            if (interfaceC3269z5 != null) {
                String str2 = AbstractC3222w6.f25388a;
                ((A5) interfaceC3269z5).b(str2, rf.a(e10, H6.a(str2, "access$getTAG$p(...)", "SDK encountered unexpected error in handling destroyWebView() request from creative; ")));
            }
        }
    }
}
