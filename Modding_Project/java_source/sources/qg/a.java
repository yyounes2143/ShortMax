package qg;

import com.google.gson.Gson;
import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ConfigSetting.kt */
@Metadata
/* loaded from: classes7.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f65331a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Gson f65332b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final MMKV f65333c;

    public a(boolean z10, @NotNull Gson gson, @Nullable MMKV mmkv) {
        Intrinsics.checkNotNullParameter(gson, "gson");
        this.f65331a = z10;
        this.f65332b = gson;
        this.f65333c = mmkv;
    }

    @NotNull
    public final Gson a() {
        return this.f65332b;
    }

    @Nullable
    public final MMKV b() {
        return this.f65333c;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f65331a == aVar.f65331a && Intrinsics.areEqual(this.f65332b, aVar.f65332b) && Intrinsics.areEqual(this.f65333c, aVar.f65333c)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = ((Boolean.hashCode(this.f65331a) * 31) + this.f65332b.hashCode()) * 31;
        MMKV mmkv = this.f65333c;
        if (mmkv == null) {
            hashCode = 0;
        } else {
            hashCode = mmkv.hashCode();
        }
        return hashCode2 + hashCode;
    }

    @NotNull
    public String toString() {
        return "ConfigSetting(debug=" + this.f65331a + ", gson=" + this.f65332b + ", store=" + this.f65333c + ')';
    }
}
