package com.startshorts.androidplayer.manager.immersion.feature;

import android.widget.Toast;
import com.hades.aar.activity.IDActivity;
import com.startshorts.androidplayer.R$string;
import com.startshorts.androidplayer.bean.eventbus.ShowDisableSkipUnlockToastEvent;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.greenrobot.eventbus.ThreadMode;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DisableSkipUnlockTipFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class h implements IImmersionFeature {

    /* renamed from: a  reason: collision with root package name */
    private boolean f42608a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Toast f42609b;

    /* compiled from: DisableSkipUnlockTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_CREATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_PAUSE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_ON_RESUME.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private final void b() {
        try {
            Toast toast = this.f42609b;
            if (toast != null) {
                toast.cancel();
            }
        } catch (Exception unused) {
        }
        this.f42609b = null;
    }

    private final void c() {
        IDActivity iDActivity;
        b();
        try {
            WeakReference<IDActivity> d10 = aa.a.f321a.d();
            if (d10 != null && (iDActivity = d10.get()) != null) {
                String string = iDActivity.getString(R$string.episode_list_dialog_fragment_disable_skip_locked_episode);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                Toast makeText = Toast.makeText(iDActivity, string, 0);
                makeText.show();
                this.f42609b = makeText;
            }
        } catch (Exception unused) {
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = a.$EnumSwitchMapping$0[message.b().ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    this.f42608a = false;
                    return;
                }
                return;
            }
            this.f42608a = true;
            return;
        }
        au.c.d().p(this);
    }

    @au.l(threadMode = ThreadMode.MAIN)
    public final void receiveShowDisableSkipUnlockToastEvent(@NotNull ShowDisableSkipUnlockToastEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (this.f42608a) {
            return;
        }
        c();
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        au.c.d().r(this);
        b();
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.DISABLE_SKIP_UNLOCK_TIP;
    }
}
