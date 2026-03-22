package androidx.datastore.core;

import android.os.FileObserver;
import androidx.annotation.CheckResult;
import androidx.annotation.VisibleForTesting;
import androidx.datastore.core.MulticastFileObserver;
import gt.s0;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.flow.c;
import kt.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MulticastFileObserver.android.kt */
@Metadata
@SourceDebugExtension({"SMAP\nMulticastFileObserver.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MulticastFileObserver.android.kt\nandroidx/datastore/core/MulticastFileObserver\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n1855#2,2:146\n*S KotlinDebug\n*F\n+ 1 MulticastFileObserver.android.kt\nandroidx/datastore/core/MulticastFileObserver\n*L\n50#1:146,2\n*E\n"})
/* loaded from: classes2.dex */
public final class MulticastFileObserver extends FileObserver {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Object LOCK = new Object();
    @NotNull
    private static final Map<String, MulticastFileObserver> fileObservers = new LinkedHashMap();
    @NotNull
    private final CopyOnWriteArrayList<Function1<String, Unit>> delegates;
    @NotNull
    private final String path;

    /* compiled from: MulticastFileObserver.android.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nMulticastFileObserver.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MulticastFileObserver.android.kt\nandroidx/datastore/core/MulticastFileObserver$Companion\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n372#2,7:146\n1855#3,2:153\n*S KotlinDebug\n*F\n+ 1 MulticastFileObserver.android.kt\nandroidx/datastore/core/MulticastFileObserver$Companion\n*L\n103#1:146,7\n137#1:153,2\n*E\n"})
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void observe$lambda$4(String str, Function1 observer) {
            Intrinsics.checkNotNullParameter(observer, "$observer");
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Companion companion = MulticastFileObserver.Companion;
                    MulticastFileObserver multicastFileObserver = companion.getFileObservers$datastore_core_release().get(str);
                    if (multicastFileObserver != null) {
                        multicastFileObserver.delegates.remove(observer);
                        if (multicastFileObserver.delegates.isEmpty()) {
                            companion.getFileObservers$datastore_core_release().remove(str);
                            multicastFileObserver.stopWatching();
                        }
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        @NotNull
        public final Map<String, MulticastFileObserver> getFileObservers$datastore_core_release() {
            return MulticastFileObserver.fileObservers;
        }

        @CheckResult
        @NotNull
        public final b<Unit> observe(@NotNull File file) {
            Intrinsics.checkNotNullParameter(file, "file");
            return c.k(new MulticastFileObserver$Companion$observe$1(file, null));
        }

        @VisibleForTesting
        public final void removeAllObservers$datastore_core_release() {
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    for (MulticastFileObserver multicastFileObserver : MulticastFileObserver.Companion.getFileObservers$datastore_core_release().values()) {
                        multicastFileObserver.stopWatching();
                    }
                    MulticastFileObserver.Companion.getFileObservers$datastore_core_release().clear();
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        @CheckResult
        public final s0 observe(File file, final Function1<? super String, Unit> function1) {
            final String key = file.getCanonicalFile().getPath();
            synchronized (MulticastFileObserver.LOCK) {
                try {
                    Map<String, MulticastFileObserver> fileObservers$datastore_core_release = MulticastFileObserver.Companion.getFileObservers$datastore_core_release();
                    Intrinsics.checkNotNullExpressionValue(key, "key");
                    MulticastFileObserver multicastFileObserver = fileObservers$datastore_core_release.get(key);
                    if (multicastFileObserver == null) {
                        multicastFileObserver = new MulticastFileObserver(key, null);
                        fileObservers$datastore_core_release.put(key, multicastFileObserver);
                    }
                    MulticastFileObserver multicastFileObserver2 = multicastFileObserver;
                    multicastFileObserver2.delegates.add(function1);
                    if (multicastFileObserver2.delegates.size() == 1) {
                        multicastFileObserver2.startWatching();
                    }
                    Unit unit = Unit.f60915a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return new s0() { // from class: androidx.datastore.core.a
                @Override // gt.s0
                public final void dispose() {
                    MulticastFileObserver.Companion.observe$lambda$4(key, function1);
                }
            };
        }

        @VisibleForTesting
        public static /* synthetic */ void getFileObservers$datastore_core_release$annotations() {
        }
    }

    public /* synthetic */ MulticastFileObserver(String str, DefaultConstructorMarker defaultConstructorMarker) {
        this(str);
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    @Override // android.os.FileObserver
    public void onEvent(int i10, @Nullable String str) {
        Iterator<T> it = this.delegates.iterator();
        while (it.hasNext()) {
            ((Function1) it.next()).invoke(str);
        }
    }

    private MulticastFileObserver(String str) {
        super(str, 128);
        this.path = str;
        this.delegates = new CopyOnWriteArrayList<>();
    }
}
