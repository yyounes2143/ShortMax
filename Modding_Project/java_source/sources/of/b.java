package of;

import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DecryptRule.kt */
@Metadata
/* loaded from: classes6.dex */
public final class b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f63189a;

    /* renamed from: b  reason: collision with root package name */
    private final int f63190b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final byte[] f63191c;

    /* renamed from: d  reason: collision with root package name */
    private final int f63192d;

    public b(@NotNull String version, int i10, @NotNull byte[] key, int i11) {
        Intrinsics.checkNotNullParameter(version, "version");
        Intrinsics.checkNotNullParameter(key, "key");
        this.f63189a = version;
        this.f63190b = i10;
        this.f63191c = key;
        this.f63192d = i11;
    }

    public final int a() {
        return this.f63192d;
    }

    @NotNull
    public final byte[] b() {
        return this.f63191c;
    }

    public boolean equals(@Nullable Object obj) {
        Class<?> cls;
        if (this == obj) {
            return true;
        }
        if (obj != null) {
            cls = obj.getClass();
        } else {
            cls = null;
        }
        if (!Intrinsics.areEqual(b.class, cls)) {
            return false;
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type com.startshorts.androidplayer.manager.player.feature.decryptor.DecryptRule");
        b bVar = (b) obj;
        if (Intrinsics.areEqual(this.f63189a, bVar.f63189a) && this.f63190b == bVar.f63190b && Arrays.equals(this.f63191c, bVar.f63191c) && this.f63192d == bVar.f63192d) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int hashCode = Integer.hashCode(this.f63190b);
        int hashCode2 = Arrays.hashCode(this.f63191c);
        return Integer.hashCode(this.f63192d) + ((hashCode2 + ((hashCode + (this.f63189a.hashCode() * 31)) * 31)) * 31);
    }

    @NotNull
    public String toString() {
        return "DecryptRule(version=" + this.f63189a + ", keyIndex=" + this.f63190b + ", key=" + Arrays.toString(this.f63191c) + ", encryptLength=" + this.f63192d + ')';
    }
}
