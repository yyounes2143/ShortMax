package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProgressAdjustTipFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class p implements IImmersionFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private ek.d f42657a;

    /* compiled from: ProgressAdjustTipFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PAGE_FIRST_LONG_CLICK.ordinal()] = 1;
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
            if (!bVar.M1() || (b10 = b(message)) == null) {
                return;
            }
            bVar.Z4(false);
            ek.d dVar = new ek.d(b10);
            dVar.show();
            this.f42657a = dVar;
        }
    }

    @Nullable
    public BaseActivity b(@NotNull k kVar) {
        return IImmersionFeature.a.a(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
        ek.d dVar = this.f42657a;
        if (dVar != null) {
            dVar.cancel();
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.PROGRESS_ADJUST_TIP;
    }
}
