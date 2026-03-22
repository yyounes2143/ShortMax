package com.startshorts.androidplayer.manager.shorts.feature;

import com.startshorts.androidplayer.manager.shorts.feature.IShortsFeature;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ShortsFeatureMessage.kt */
@Metadata
/* loaded from: classes6.dex */
public final class i {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final IShortsFeature.MessageType f42990a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Object> f42991b;

    public i(@NotNull IShortsFeature.MessageType type, @Nullable HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f42990a = type;
        this.f42991b = hashMap;
    }

    @Nullable
    public final HashMap<String, Object> a() {
        return this.f42991b;
    }

    @NotNull
    public final IShortsFeature.MessageType b() {
        return this.f42990a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (this.f42990a == iVar.f42990a && Intrinsics.areEqual(this.f42991b, iVar.f42991b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f42990a.hashCode() * 31;
        HashMap<String, Object> hashMap = this.f42991b;
        if (hashMap == null) {
            hashCode = 0;
        } else {
            hashCode = hashMap.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ShortsFeatureMessage(type=" + this.f42990a + ", extra=" + this.f42991b + ')';
    }

    public /* synthetic */ i(IShortsFeature.MessageType messageType, HashMap hashMap, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(messageType, (i10 & 2) != 0 ? null : hashMap);
    }
}
