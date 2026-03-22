package io.ktor.util;

import com.ss.ttvideoengine.TTVideoEngineInterface;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableMap;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CaseInsensitiveMap.kt */
@Metadata
/* loaded from: classes8.dex */
final class a<Key, Value> implements Map.Entry<Key, Value>, KMutableMap.Entry {

    /* renamed from: a  reason: collision with root package name */
    private final Key f59296a;

    /* renamed from: b  reason: collision with root package name */
    private Value f59297b;

    public a(Key key, Value value) {
        this.f59296a = key;
        this.f59297b = value;
    }

    public void a(Value value) {
        this.f59297b = value;
    }

    @Override // java.util.Map.Entry
    public boolean equals(@Nullable Object obj) {
        if (obj == null || !(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        if (!Intrinsics.areEqual(entry.getKey(), getKey()) || !Intrinsics.areEqual(entry.getValue(), getValue())) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public Key getKey() {
        return this.f59296a;
    }

    @Override // java.util.Map.Entry
    public Value getValue() {
        return this.f59297b;
    }

    @Override // java.util.Map.Entry
    public int hashCode() {
        Key key = getKey();
        Intrinsics.checkNotNull(key);
        int hashCode = key.hashCode() + TTVideoEngineInterface.PLAYER_OPTION_ABR_STALL_PENALTY_PARAMETER;
        Value value = getValue();
        Intrinsics.checkNotNull(value);
        return hashCode + value.hashCode();
    }

    @Override // java.util.Map.Entry
    public Value setValue(Value value) {
        a(value);
        return getValue();
    }

    @NotNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getKey());
        sb2.append('=');
        sb2.append(getValue());
        return sb2.toString();
    }
}
