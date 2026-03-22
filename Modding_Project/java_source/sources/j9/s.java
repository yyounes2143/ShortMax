package j9;

import java.util.Map;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ProcessDataManager.kt */
@Metadata
/* loaded from: classes5.dex */
public interface s {

    /* compiled from: ProcessDataManager.kt */
    @Metadata
    /* loaded from: classes5.dex */
    public static final class a {
        @NotNull
        public static Map<String, com.google.firebase.sessions.h> a(@NotNull s sVar) {
            return sVar.e(kotlin.collections.p0.i());
        }
    }

    @NotNull
    String a();

    boolean b(@NotNull Map<String, com.google.firebase.sessions.h> map);

    boolean c(@NotNull Map<String, com.google.firebase.sessions.h> map);

    @NotNull
    Map<String, com.google.firebase.sessions.h> d();

    @NotNull
    Map<String, com.google.firebase.sessions.h> e(@Nullable Map<String, com.google.firebase.sessions.h> map);

    void f();
}
