package com.startshorts.androidplayer.manager.immersion.feature;

import android.app.Activity;
import android.content.Intent;
import android.provider.Settings;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import com.startshorts.androidplayer.bean.eventbus.AppStateEvent;
import com.startshorts.androidplayer.bean.eventbus.GooglePayDialogVisibleEvent;
import com.startshorts.androidplayer.log.Logger;
import com.startshorts.androidplayer.manager.configure.abtest.ABTestFactory;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.service.miniwindow.ImmersionMiniWindow;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import fk.h0;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MiniWindowFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class l implements IImmersionFeature {
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    public static final b f42623j = new b(null);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<Activity> f42624a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final a f42625b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f42626c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private String f42627d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f42628e;

    /* renamed from: f  reason: collision with root package name */
    private boolean f42629f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private IImmersionFeature.MessageType f42630g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f42631h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private ActivityResultLauncher<Intent> f42632i;

    /* compiled from: MiniWindowFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a(@NotNull String str, boolean z10, boolean z11, @NotNull IImmersionFeature.MessageType messageType);

        void b();
    }

    /* compiled from: MiniWindowFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public static final class b {
        public /* synthetic */ b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    /* compiled from: MiniWindowFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class c {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_FINISH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RELEASE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RESUME.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PAUSED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SWITCH_EPISODE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PLAYING.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[IImmersionFeature.MessageType.SHOW_MINI_WINDOW.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public l(@NotNull WeakReference<Activity> actRef, @NotNull a callBack) {
        Intrinsics.checkNotNullParameter(actRef, "actRef");
        Intrinsics.checkNotNullParameter(callBack, "callBack");
        this.f42624a = actRef;
        this.f42625b = callBack;
        this.f42627d = "";
        this.f42630g = IImmersionFeature.MessageType.ACTIVITY_ON_CREATE;
    }

    private final BaseActivity e() {
        Activity activity = this.f42624a.get();
        if (activity instanceof BaseActivity) {
            return (BaseActivity) activity;
        }
        return null;
    }

    private final void g() {
        if (this.f42628e) {
            this.f42628e = false;
            if (Settings.canDrawOverlays(e())) {
                j(false, this.f42627d);
            } else {
                h0.f51735a.e(new Runnable() { // from class: hf.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        com.startshorts.androidplayer.manager.immersion.feature.l.h(com.startshorts.androidplayer.manager.immersion.feature.l.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h(l lVar) {
        lVar.f42625b.b();
    }

    private final void j(boolean z10, final String str) {
        Logger logger = Logger.f41511a;
        logger.h("PipFeature", "showMiniWindow -> requestPermission(" + z10 + ") from(" + str + ')');
        if (Settings.canDrawOverlays(e())) {
            this.f42626c = true;
            h0.f51735a.e(new Runnable() { // from class: hf.q
                @Override // java.lang.Runnable
                public final void run() {
                    com.startshorts.androidplayer.manager.immersion.feature.l.k(com.startshorts.androidplayer.manager.immersion.feature.l.this, str);
                }
            });
        } else if (z10) {
            this.f42627d = str;
            this.f42628e = true;
            BaseActivity e10 = e();
            if (e10 != null) {
                mk.c.f62521a.g(e10, this.f42632i);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(l lVar, String str) {
        lVar.f42625b.a(str, lVar.f42628e, lVar.f42631h, lVar.f42630g);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        Object obj2;
        Object obj3;
        Intrinsics.checkNotNullParameter(message, "message");
        boolean z10 = false;
        String str = "";
        String str2 = null;
        String str3 = null;
        Boolean bool = null;
        switch (c.$EnumSwitchMapping$0[message.b().ordinal()]) {
            case 1:
            case 2:
            case 3:
                this.f42630g = message.b();
                return;
            case 4:
                this.f42630g = message.b();
                BaseActivity e10 = e();
                if (e10 != null) {
                    ImmersionMiniWindow.J.b(e10);
                    HashMap<String, Object> a10 = message.a();
                    if (a10 != null) {
                        obj = a10.get("from");
                    } else {
                        obj = null;
                    }
                    if (obj instanceof String) {
                        str2 = (String) obj;
                    }
                    if (str2 != null) {
                        str = str2;
                    }
                    this.f42627d = str;
                    if (!Intrinsics.areEqual(str, "ShortsFragment")) {
                        this.f42632i = e10.registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback() { // from class: hf.r
                            @Override // androidx.activity.result.ActivityResultCallback
                            public final void onActivityResult(Object obj4) {
                                com.startshorts.androidplayer.manager.immersion.feature.l.i((ActivityResult) obj4);
                            }
                        });
                    }
                }
                au.c.d().p(this);
                return;
            case 5:
                this.f42630g = message.b();
                g();
                return;
            case 6:
                HashMap<String, Object> a11 = message.a();
                if (a11 != null) {
                    obj2 = a11.get("paused_by_user");
                } else {
                    obj2 = null;
                }
                if (obj2 instanceof Boolean) {
                    bool = (Boolean) obj2;
                }
                if (bool != null) {
                    z10 = bool.booleanValue();
                }
                this.f42631h = z10;
                return;
            case 7:
            case 8:
                this.f42631h = false;
                return;
            case 9:
                HashMap<String, Object> a12 = message.a();
                if (a12 != null) {
                    obj3 = a12.get("from");
                } else {
                    obj3 = null;
                }
                if (obj3 instanceof String) {
                    str3 = (String) obj3;
                }
                if (str3 != null) {
                    str = str3;
                }
                this.f42627d = str;
                j(true, str);
                return;
            default:
                return;
        }
    }

    public final boolean f() {
        return this.f42626c;
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveAppStateEvent(@NotNull AppStateEvent event) {
        boolean canDrawOverlays;
        String str;
        Intrinsics.checkNotNullParameter(event, "event");
        Logger.f41511a.h("PipFeature", "receive AppStateEvent -> event(" + event + ") ");
        if (event.getState() == 2 && !ud.a.f68411a.l() && !this.f42631h && !this.f42629f && ABTestFactory.f42224a.o1().isEnable().invoke().booleanValue()) {
            kf.b.f60715a.h(true);
            BaseActivity e10 = e();
            if (e10 == null) {
                canDrawOverlays = false;
            } else {
                canDrawOverlays = Settings.canDrawOverlays(e10);
            }
            if (ud.b.f68412a.i1(canDrawOverlays)) {
                if (!Intrinsics.areEqual(this.f42627d, "ShortsFragment")) {
                    str = "immersion_auto";
                } else {
                    str = "short_auto";
                }
                j(false, str);
            }
        }
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveGooglePayDialogVisibleEvent(@NotNull GooglePayDialogVisibleEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        Logger logger = Logger.f41511a;
        logger.h("PipFeature", "receive GooglePayDialogVisibleEvent -> " + event);
        if (event.getVisible() && ABTestFactory.f42224a.o1().isEnable().invoke().booleanValue()) {
            this.f42629f = true;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        this.f42624a.clear();
        au.c.d().r(this);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.MINI_WINDOW;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(ActivityResult activityResult) {
    }
}
