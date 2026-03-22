package og;

import com.tencent.mmkv.MMKV;
import kotlin.Metadata;
import kotlin.Unit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import pg.c;
/* compiled from: RemoteConfigStorage.kt */
@Metadata
/* loaded from: classes7.dex */
public final class b implements c {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final MMKV f63205a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final String f63206b = "local_config_cache";

    public b(@Nullable MMKV mmkv) {
        this.f63205a = mmkv;
    }

    @Override // pg.c
    @Nullable
    public Object a(@NotNull String str, @NotNull rs.c<? super Unit> cVar) {
        MMKV mmkv = this.f63205a;
        if (mmkv != null) {
            mmkv.putString(this.f63206b, str);
        }
        return Unit.f60915a;
    }

    @Override // pg.c
    @Nullable
    public Object b(@NotNull rs.c<? super String> cVar) {
        MMKV mmkv = this.f63205a;
        if (mmkv == null) {
            return null;
        }
        return mmkv.getString(this.f63206b, null);
    }
}
