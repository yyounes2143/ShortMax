package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.bean.ad.AdScene;
import com.startshorts.androidplayer.manager.ad.AdManager;
import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AdFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a implements IShortsFeature {

    /* compiled from: AdFeature.kt */
    @Metadata
    /* renamed from: com.startshorts.androidplayer.manager.shorts.feature.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public /* synthetic */ class C0626a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.FIRST_USER_VISIBLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[IShortsFeature.MessageType.SWITCH_EPISODE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        Intrinsics.checkNotNullParameter(message, "message");
        int i10 = C0626a.$EnumSwitchMapping$0[message.b().ordinal()];
        if ((i10 == 1 || i10 == 2) && com.startshorts.androidplayer.manager.configure.ad.a.f42306a.value().p("shorts")) {
            AdManager.f41600a.a0(AdScene.NATIVE);
        }
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.AD;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
    }
}
