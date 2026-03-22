package af;

import android.os.Bundle;
import com.startshorts.androidplayer.bean.event.EventInfo;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: IEventLogger.kt */
@Metadata
/* loaded from: classes6.dex */
public interface h {
    void b(boolean z10);

    int c();

    @Nullable
    Object d(@NotNull String str, @Nullable Bundle bundle, long j10, @NotNull rs.c<? super Unit> cVar);

    void e(int i10, @Nullable Function1<? super Integer, Unit> function1, @Nullable Function0<Unit> function0);

    @Nullable
    Object f(@NotNull List<EventInfo> list, @NotNull rs.c<? super Unit> cVar);
}
