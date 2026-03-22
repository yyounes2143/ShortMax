package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortRatingFeature.kt */
@Metadata
/* loaded from: classes6.dex */
public final class h implements IShortsFeature {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private a f42989a;

    /* compiled from: ShortRatingFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public interface a {
        void a();

        void onRelease();
    }

    /* compiled from: ShortRatingFeature.kt */
    @Metadata
    /* loaded from: classes6.dex */
    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IShortsFeature.MessageType.values().length];
            try {
                iArr[IShortsFeature.MessageType.PLAY_EPISODE_START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void a(@NotNull i message) {
        a aVar;
        Intrinsics.checkNotNullParameter(message, "message");
        if (b.$EnumSwitchMapping$0[message.b().ordinal()] == 1 && (aVar = this.f42989a) != null) {
            aVar.a();
        }
    }

    public final void b(@Nullable a aVar) {
        this.f42989a = aVar;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    public void release() {
        a aVar = this.f42989a;
        if (aVar != null) {
            aVar.onRelease();
        }
        this.f42989a = null;
    }

    @Override // com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature
    @NotNull
    public IShortsFeature.FeatureType type() {
        return IShortsFeature.FeatureType.SHORT_RATING;
    }
}
