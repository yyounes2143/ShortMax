package mt;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: SystemProps.kt */
@Metadata
/* loaded from: classes8.dex */
final /* synthetic */ class c0 {

    /* renamed from: a  reason: collision with root package name */
    private static final int f62659a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f62659a;
    }

    @Nullable
    public static final String b(@NotNull String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
