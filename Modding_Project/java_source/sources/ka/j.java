package ka;

import android.app.Activity;
import com.hades.aar.auth.base.AuthType;
import com.hades.aar.auth.base.AuthUser;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata
/* loaded from: classes5.dex */
public interface j {
    void a(@NotNull String str, @Nullable String str2);

    void b(@NotNull AuthType authType, boolean z10, int i10, @Nullable String str);

    void c(@Nullable Activity activity, @NotNull AuthType authType, @Nullable String str, @NotNull String str2, @Nullable AuthUser authUser);

    void d(@NotNull AuthType authType);
}
