package androidx.datastore.core;

import androidx.annotation.GuardedBy;
import androidx.datastore.core.FileStorage;
import java.io.File;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileStorage.kt */
@Metadata
/* loaded from: classes2.dex */
public final class FileStorage<T> implements Storage<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @GuardedBy("activeFilesLock")
    @NotNull
    private static final Set<String> activeFiles = new LinkedHashSet();
    @NotNull
    private static final Object activeFilesLock = new Object();
    @NotNull
    private final Function1<File, InterProcessCoordinator> coordinatorProducer;
    @NotNull
    private final Function0<File> produceFile;
    @NotNull
    private final Serializer<T> serializer;

    /* compiled from: FileStorage.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Set<String> getActiveFiles$datastore_core_release() {
            return FileStorage.activeFiles;
        }

        @NotNull
        public final Object getActiveFilesLock$datastore_core_release() {
            return FileStorage.activeFilesLock;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public FileStorage(@NotNull Serializer<T> serializer, @NotNull Function1<? super File, ? extends InterProcessCoordinator> coordinatorProducer, @NotNull Function0<? extends File> produceFile) {
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinatorProducer, "coordinatorProducer");
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        this.serializer = serializer;
        this.coordinatorProducer = coordinatorProducer;
        this.produceFile = produceFile;
    }

    @Override // androidx.datastore.core.Storage
    @NotNull
    public StorageConnection<T> createConnection() {
        final File file = this.produceFile.invoke().getCanonicalFile();
        synchronized (activeFilesLock) {
            String path = file.getAbsolutePath();
            Set<String> set = activeFiles;
            if (!set.contains(path)) {
                Intrinsics.checkNotNullExpressionValue(path, "path");
                set.add(path);
            } else {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + path + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
        }
        Intrinsics.checkNotNullExpressionValue(file, "file");
        return new FileStorageConnection(file, this.serializer, this.coordinatorProducer.invoke(file), new Function0<Unit>() { // from class: androidx.datastore.core.FileStorage$createConnection$2
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                FileStorage.Companion companion = FileStorage.Companion;
                Object activeFilesLock$datastore_core_release = companion.getActiveFilesLock$datastore_core_release();
                File file2 = file;
                synchronized (activeFilesLock$datastore_core_release) {
                    companion.getActiveFiles$datastore_core_release().remove(file2.getAbsolutePath());
                    Unit unit = Unit.f60915a;
                }
            }
        });
    }

    public /* synthetic */ FileStorage(Serializer serializer, Function1 function1, Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(serializer, (i10 & 2) != 0 ? new Function1<File, InterProcessCoordinator>() { // from class: androidx.datastore.core.FileStorage.1
            @Override // kotlin.jvm.functions.Function1
            @NotNull
            public final InterProcessCoordinator invoke(@NotNull File it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return InterProcessCoordinator_jvmKt.createSingleProcessCoordinator(it);
            }
        } : function1, function0);
    }
}
