package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProgressAdjustTipFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class g implements IShortsFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ek.d f42988a;

    /* compiled from: ProgressAdjustTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.PAGE_FIRST_LONG_CLICK.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        Object obj;
        Intrinsics.checkNotNullParameter(message, "message");
        if (a.$EnumSwitchMapping$0[message.b().ordinal()] == 1) {
            ud.b bVar = ud.b.f68412a;
            if (!bVar.M1()) {
                return;
            }
            HashMap<String, Object> a10 = message.a();
            BaseActivity baseActivity = null;
            if (a10 != null) {
                obj = a10.get("activity");
            } else {
                obj = null;
            }
            if (obj instanceof BaseActivity) {
                baseActivity = (BaseActivity) obj;
            }
            if (baseActivity == null) {
                return;
            }
            bVar.Z4(false);
            ek.d dVar = new ek.d(baseActivity);
            dVar.show();
            this.f42988a = dVar;
        }
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
        ek.d dVar = this.f42988a;
        if (dVar != null) {
            dVar.cancel();
        }
        this.f42988a = null;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.PROGRESS_ADJUST_TIP;
    }
}
