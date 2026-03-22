package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SwipeToWatchTipFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class u implements IImmersionFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ek.f f42663a;

    /* compiled from: SwipeToWatchTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.START_CLEAR_SCREEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        BaseActivity b10;
        Intrinsics.checkNotNullParameter(message, "message");
        if (a.$EnumSwitchMapping$0[message.b().ordinal()] == 1) {
            ud.b bVar = ud.b.f68412a;
            if (!bVar.O1() || (b10 = b(message)) == null) {
                return;
            }
            bVar.c5(false);
            ek.f fVar = new ek.f(b10);
            fVar.show();
            this.f42663a = fVar;
        }
    }

    @Nullable
    public BaseActivity b(@NotNull k kVar) {
        return IImmersionFeature.a.a(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        ek.f fVar = this.f42663a;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.SWIPE_TO_WATCH_TIP;
    }
}
