package com.startshorts.androidplayer.manager.immersion.feature;

import com.startshorts.androidplayer.manager.immersion.feature.IImmersionFeature;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ImmersionFeatureMessage.kt */
@Metadata
/* loaded from: classes6.dex */
public final class k {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final IImmersionFeature.MessageType f42621a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final HashMap<String, Object> f42622b;

    public k(@NotNull IImmersionFeature.MessageType type, @Nullable HashMap<String, Object> hashMap) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.f42621a = type;
        this.f42622b = hashMap;
    }

    @Nullable
    public final HashMap<String, Object> a() {
        return this.f42622b;
    }

    @NotNull
    public final IImmersionFeature.MessageType b() {
        return this.f42621a;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        if (this.f42621a == kVar.f42621a && Intrinsics.areEqual(this.f42622b, kVar.f42622b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = this.f42621a.hashCode() * 31;
        HashMap<String, Object> hashMap = this.f42622b;
        if (hashMap == null) {
            hashCode = 0;
        } else {
            hashCode = hashMap.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ImmersionFeatureMessage(type=" + this.f42621a + ", extra=" + this.f42622b + ')';
    }

    public /* synthetic */ k(IImmersionFeature.MessageType messageType, HashMap hashMap, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(messageType, (i10 & 2) != 0 ? null : hashMap);
    }
}
