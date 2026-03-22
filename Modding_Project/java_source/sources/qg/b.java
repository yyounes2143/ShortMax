package qg;

import com.google.gson.JsonElement;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RemoteConfigValue.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final JsonElement f65334a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Object f65335b;

    public b(@NotNull JsonElement rawData) {
        Intrinsics.checkNotNullParameter(rawData, "rawData");
        this.f65334a = rawData;
    }

    @Nullable
    public final Object a() {
        return this.f65335b;
    }

    @NotNull
    public final JsonElement b() {
        return this.f65334a;
    }

    public final void c(@Nullable Object obj) {
        this.f65335b = obj;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof b) && Intrinsics.areEqual(this.f65334a, ((b) obj).f65334a)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.f65334a.hashCode();
    }

    @NotNull
    public String toString() {
        return "RemoteConfigValue(rawData=" + this.f65334a + ')';
    }
}
