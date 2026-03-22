package com.startshorts.androidplayer.manager.immersion.feature;

import com.adjust.sdk.Constants;
import com.startshorts.androidplayer.bean.immersion.ImmersionParams;
import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import com.startshorts.androidplayer.ui.activity.base.BaseActivity;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CampaignShortsFloatViewFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class c implements IImmersionFeature {

    /* renamed from: a  reason: collision with root package name */
    private boolean f42599a;

    /* compiled from: CampaignShortsFloatViewFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.PLAYER_PLAYING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        Object obj;
        ImmersionParams immersionParams;
        BaseEpisode c10;
        BaseActivity b10;
        Intrinsics.checkNotNullParameter(message, "message");
        if (a.$EnumSwitchMapping$0[message.b().ordinal()] != 1 || this.f42599a) {
            return;
        }
        HashMap<String, Object> a10 = message.a();
        String str = null;
        if (a10 != null) {
            obj = a10.get("immersion_params");
        } else {
            obj = null;
        }
        if (obj instanceof ImmersionParams) {
            immersionParams = (ImmersionParams) obj;
        } else {
            immersionParams = null;
        }
        if (immersionParams != null) {
            str = immersionParams.getFrom();
        }
        if ((!Intrinsics.areEqual(str, Constants.DEEPLINK) && !Intrinsics.areEqual(str, "backup_drama")) || (c10 = c(message)) == null || (b10 = b(message)) == null) {
            return;
        }
        this.f42599a = true;
        df.f.f50390a.b(b10, c10).g(b10);
    }

    @Nullable
    public BaseActivity b(@NotNull k kVar) {
        return IImmersionFeature.a.a(this, kVar);
    }

    @Nullable
    public BaseEpisode c(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.CAMPAIGN_SHORTS_FLOAT_VIEW;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
