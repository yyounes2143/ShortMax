package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.bean.shorts.BaseEpisode;
import com.startshorts.androidplayer.bean.shorts.PlayContinue;
import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ContinueWatchFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class f implements IImmersionFeature {

    /* compiled from: ContinueWatchFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IImmersionFeature.MessageType.values().length];
            try {
                iArr[IImmersionFeature.MessageType.ACTIVITY_FINISH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void a(@NotNull k message) {
        BaseEpisode b10;
        Object obj;
        List list;
        Intrinsics.checkNotNullParameter(message, "message");
        if (a.$EnumSwitchMapping$0[message.b().ordinal()] != 1 || !zg.c.f71648a.c() || (b10 = b(message)) == null) {
            return;
        }
        HashMap<String, Object> a10 = message.a();
        if (a10 != null) {
            obj = a10.get("invalid_shorts_list");
        } else {
            obj = null;
        }
        if (TypeIntrinsics.isMutableList(obj)) {
            list = (List) obj;
        } else {
            list = null;
        }
        if (list == null || CollectionsKt.g0(list, Integer.valueOf(b10.getShortPlayId()))) {
            return;
        }
        if (!b10.isTrailer() && !b10.isLastEpisode()) {
            PlayContinue playContinue = new PlayContinue();
            playContinue.setId(b10.getId());
            playContinue.setShortPlayId(b10.getShortPlayId());
            playContinue.setShortPlayCode(b10.getShortPlayCode());
            playContinue.setShortPlayName(b10.getShortPlayName());
            playContinue.setCoverId(b10.getCoverId());
            playContinue.setEpisodeNum(b10.getEpisodeNum());
            playContinue.setTotalEpisodes(b10.getTotalEpisodes());
            playContinue.setUpack(b10.getUpack());
            ud.b.f68412a.l2(playContinue);
            return;
        }
        ud.b.f68412a.l2(null);
    }

    @Nullable
    public BaseEpisode b(@NotNull k kVar) {
        return IImmersionFeature.a.b(this, kVar);
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    @NotNull
    public IImmersionFeature.FeatureType type() {
        return IImmersionFeature.FeatureType.CONTINUE_WATCH;
    }

    @Override // com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature
    public void release() {
    }
}
