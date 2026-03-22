package androidx.compose.runtime;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.TestOnly;
/* compiled from: HotReloader.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHotReloader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HotReloader.kt\nandroidx/compose/runtime/HotReloaderKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,129:1\n1611#2,9:130\n1863#2:139\n1864#2:141\n1620#2:142\n1557#2:143\n1628#2,3:144\n1#3:140\n*S KotlinDebug\n*F\n+ 1 HotReloader.kt\nandroidx/compose/runtime/HotReloaderKt\n*L\n108#1:130,9\n108#1:139\n108#1:141\n108#1:142\n123#1:143\n123#1:144,3\n108#1:140\n*E\n"})
/* loaded from: classes.dex */
public final class HotReloaderKt {
    @TestOnly
    public static final void clearCompositionErrors() {
        HotReloader.Companion.clearErrors();
    }

    @ms.c
    @TestOnly
    @NotNull
    public static final List<Pair<Exception, Boolean>> currentCompositionErrors() {
        Exception exc;
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = getCurrentCompositionErrors().iterator();
        while (it.hasNext()) {
            Pair pair = (Pair) it.next();
            Throwable th2 = (Throwable) pair.b();
            Boolean bool = (Boolean) pair.d();
            bool.booleanValue();
            Pair pair2 = null;
            if (th2 instanceof Exception) {
                exc = (Exception) th2;
            } else {
                exc = null;
            }
            if (exc != null) {
                pair2 = ms.k.a(exc, bool);
            }
            if (pair2 != null) {
                arrayList.add(pair2);
            }
        }
        return arrayList;
    }

    @TestOnly
    public static final void disableHotReloadMode() {
        Recomposer.Companion.setHotReloadEnabled$runtime(false);
    }

    @TestOnly
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final List<Pair<Throwable, Boolean>> getCurrentCompositionErrors() {
        List<RecomposerErrorInfo> currentErrors = HotReloader.Companion.getCurrentErrors();
        ArrayList arrayList = new ArrayList(CollectionsKt.z(currentErrors, 10));
        for (RecomposerErrorInfo recomposerErrorInfo : currentErrors) {
            arrayList.add(ms.k.a(recomposerErrorInfo.getCause(), Boolean.valueOf(recomposerErrorInfo.getRecoverable())));
        }
        return arrayList;
    }

    @TestOnly
    public static final void invalidateGroupsWithKey(int i10) {
        HotReloader.Companion.invalidateGroupsWithKey(i10);
    }

    @TestOnly
    public static final void simulateHotReload(@NotNull Object obj) {
        HotReloader.Companion.simulateHotReload$runtime(obj);
    }
}
