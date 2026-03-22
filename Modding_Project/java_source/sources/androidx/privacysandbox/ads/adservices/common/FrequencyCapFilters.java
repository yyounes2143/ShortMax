package androidx.privacysandbox.ads.adservices.common;

import android.adservices.common.FrequencyCapFilters;
import androidx.annotation.RequiresExtension;
import androidx.annotation.RestrictTo;
import androidx.privacysandbox.ads.adservices.common.ExperimentalFeatures;
import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: FrequencyCapFilters.kt */
@Metadata
@ExperimentalFeatures.Ext8OptIn
/* loaded from: classes2.dex */
public final class FrequencyCapFilters {
    public static final int AD_EVENT_TYPE_CLICK = 3;
    public static final int AD_EVENT_TYPE_IMPRESSION = 1;
    public static final int AD_EVENT_TYPE_VIEW = 2;
    public static final int AD_EVENT_TYPE_WIN = 0;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForClickEvents;
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents;
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents;
    @NotNull
    private final List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents;

    /* compiled from: FrequencyCapFilters.kt */
    @Metadata
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    /* loaded from: classes2.dex */
    public @interface AdEventType {
    }

    /* compiled from: FrequencyCapFilters.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public FrequencyCapFilters() {
        this(null, null, null, null, 15, null);
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    private final List<android.adservices.common.KeyedFrequencyCap> convertToAdServices(List<KeyedFrequencyCap> list) {
        ArrayList arrayList = new ArrayList();
        for (KeyedFrequencyCap keyedFrequencyCap : list) {
            arrayList.add(keyedFrequencyCap.convertToAdServices$ads_adservices_release());
        }
        return arrayList;
    }

    @RequiresExtension.Container({@RequiresExtension(extension = TTVideoEngineInterface.PLAYER_TIME_BASE, version = 8), @RequiresExtension(extension = 31, version = 9)})
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    @NotNull
    public final android.adservices.common.FrequencyCapFilters convertToAdServices$ads_adservices_release() {
        FrequencyCapFilters.Builder keyedFrequencyCapsForWinEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForImpressionEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForViewEvents;
        FrequencyCapFilters.Builder keyedFrequencyCapsForClickEvents;
        android.adservices.common.FrequencyCapFilters build;
        keyedFrequencyCapsForWinEvents = r.a().setKeyedFrequencyCapsForWinEvents(convertToAdServices(this.keyedFrequencyCapsForWinEvents));
        keyedFrequencyCapsForImpressionEvents = keyedFrequencyCapsForWinEvents.setKeyedFrequencyCapsForImpressionEvents(convertToAdServices(this.keyedFrequencyCapsForImpressionEvents));
        keyedFrequencyCapsForViewEvents = keyedFrequencyCapsForImpressionEvents.setKeyedFrequencyCapsForViewEvents(convertToAdServices(this.keyedFrequencyCapsForViewEvents));
        keyedFrequencyCapsForClickEvents = keyedFrequencyCapsForViewEvents.setKeyedFrequencyCapsForClickEvents(convertToAdServices(this.keyedFrequencyCapsForClickEvents));
        build = keyedFrequencyCapsForClickEvents.build();
        Intrinsics.checkNotNullExpressionValue(build, "Builder()\n            .s…   )\n            .build()");
        return build;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof FrequencyCapFilters)) {
            return false;
        }
        FrequencyCapFilters frequencyCapFilters = (FrequencyCapFilters) obj;
        if (Intrinsics.areEqual(this.keyedFrequencyCapsForWinEvents, frequencyCapFilters.keyedFrequencyCapsForWinEvents) && Intrinsics.areEqual(this.keyedFrequencyCapsForImpressionEvents, frequencyCapFilters.keyedFrequencyCapsForImpressionEvents) && Intrinsics.areEqual(this.keyedFrequencyCapsForViewEvents, frequencyCapFilters.keyedFrequencyCapsForViewEvents) && Intrinsics.areEqual(this.keyedFrequencyCapsForClickEvents, frequencyCapFilters.keyedFrequencyCapsForClickEvents)) {
            return true;
        }
        return false;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForClickEvents() {
        return this.keyedFrequencyCapsForClickEvents;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForImpressionEvents() {
        return this.keyedFrequencyCapsForImpressionEvents;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForViewEvents() {
        return this.keyedFrequencyCapsForViewEvents;
    }

    @NotNull
    public final List<KeyedFrequencyCap> getKeyedFrequencyCapsForWinEvents() {
        return this.keyedFrequencyCapsForWinEvents;
    }

    public int hashCode() {
        return (((((this.keyedFrequencyCapsForWinEvents.hashCode() * 31) + this.keyedFrequencyCapsForImpressionEvents.hashCode()) * 31) + this.keyedFrequencyCapsForViewEvents.hashCode()) * 31) + this.keyedFrequencyCapsForClickEvents.hashCode();
    }

    @NotNull
    public String toString() {
        return "FrequencyCapFilters: keyedFrequencyCapsForWinEvents=" + this.keyedFrequencyCapsForWinEvents + ", keyedFrequencyCapsForImpressionEvents=" + this.keyedFrequencyCapsForImpressionEvents + ", keyedFrequencyCapsForViewEvents=" + this.keyedFrequencyCapsForViewEvents + ", keyedFrequencyCapsForClickEvents=" + this.keyedFrequencyCapsForClickEvents;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents) {
        this(keyedFrequencyCapsForWinEvents, null, null, null, 14, null);
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents, @NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents) {
        this(keyedFrequencyCapsForWinEvents, keyedFrequencyCapsForImpressionEvents, null, null, 12, null);
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForImpressionEvents, "keyedFrequencyCapsForImpressionEvents");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents, @NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents, @NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents) {
        this(keyedFrequencyCapsForWinEvents, keyedFrequencyCapsForImpressionEvents, keyedFrequencyCapsForViewEvents, null, 8, null);
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForImpressionEvents, "keyedFrequencyCapsForImpressionEvents");
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForViewEvents, "keyedFrequencyCapsForViewEvents");
    }

    public FrequencyCapFilters(@NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForWinEvents, @NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForImpressionEvents, @NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForViewEvents, @NotNull List<KeyedFrequencyCap> keyedFrequencyCapsForClickEvents) {
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForWinEvents, "keyedFrequencyCapsForWinEvents");
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForImpressionEvents, "keyedFrequencyCapsForImpressionEvents");
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForViewEvents, "keyedFrequencyCapsForViewEvents");
        Intrinsics.checkNotNullParameter(keyedFrequencyCapsForClickEvents, "keyedFrequencyCapsForClickEvents");
        this.keyedFrequencyCapsForWinEvents = keyedFrequencyCapsForWinEvents;
        this.keyedFrequencyCapsForImpressionEvents = keyedFrequencyCapsForImpressionEvents;
        this.keyedFrequencyCapsForViewEvents = keyedFrequencyCapsForViewEvents;
        this.keyedFrequencyCapsForClickEvents = keyedFrequencyCapsForClickEvents;
    }

    public /* synthetic */ FrequencyCapFilters(List list, List list2, List list3, List list4, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? CollectionsKt.n() : list, (i10 & 2) != 0 ? CollectionsKt.n() : list2, (i10 & 4) != 0 ? CollectionsKt.n() : list3, (i10 & 8) != 0 ? CollectionsKt.n() : list4);
    }
}
