package com.startshorts.androidplayer.bean.discover;

import android.graphics.Typeface;
import com.startshorts.androidplayer.bean.adapter.SelectableItem;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import yf.a;
/* compiled from: DiscoverRanking.kt */
@Metadata
/* loaded from: classes6.dex */
public final class DiscoverRanking extends SelectableItem {
    @Nullable

    /* renamed from: id  reason: collision with root package name */
    private final Integer f38115id;
    @Nullable
    private final String name;

    public DiscoverRanking(@Nullable Integer num, @Nullable String str) {
        this.f38115id = num;
        this.name = str;
    }

    public static /* synthetic */ DiscoverRanking copy$default(DiscoverRanking discoverRanking, Integer num, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            num = discoverRanking.f38115id;
        }
        if ((i10 & 2) != 0) {
            str = discoverRanking.name;
        }
        return discoverRanking.copy(num, str);
    }

    @Nullable
    public final Integer component1() {
        return this.f38115id;
    }

    @Nullable
    public final String component2() {
        return this.name;
    }

    @NotNull
    public final DiscoverRanking copy(@Nullable Integer num, @Nullable String str) {
        return new DiscoverRanking(num, str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DiscoverRanking)) {
            return false;
        }
        DiscoverRanking discoverRanking = (DiscoverRanking) obj;
        if (Intrinsics.areEqual(this.f38115id, discoverRanking.f38115id) && Intrinsics.areEqual(this.name, discoverRanking.name)) {
            return true;
        }
        return false;
    }

    @Nullable
    public final Typeface getDiscoverTextTypeFace(boolean z10) {
        if (z10) {
            return a.f70794a.g();
        }
        return a.f70794a.j();
    }

    @Nullable
    public final Integer getId() {
        return this.f38115id;
    }

    @Nullable
    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        int hashCode;
        Integer num = this.f38115id;
        int i10 = 0;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i11 = hashCode * 31;
        String str = this.name;
        if (str != null) {
            i10 = str.hashCode();
        }
        return i11 + i10;
    }

    @Override // com.startshorts.androidplayer.bean.adapter.SelectableItem
    @NotNull
    public String toString() {
        return "DiscoverRanking(id=" + this.f38115id + ", name=" + this.name + ')';
    }
}
