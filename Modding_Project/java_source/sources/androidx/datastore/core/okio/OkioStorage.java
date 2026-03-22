package androidx.datastore.core.okio;

import androidx.datastore.core.InterProcessCoordinator;
import androidx.datastore.core.Storage;
import androidx.datastore.core.StorageConnection;
import androidx.datastore.core.okio.OkioStorage;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import ms.i;
import okio.FileSystem;
import okio.Path;
import org.jetbrains.annotations.NotNull;
/* compiled from: OkioStorage.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorage\n+ 2 Atomic.jvm.kt\nandroidx/datastore/core/okio/Synchronizer\n*L\n1#1,230:1\n49#2,2:231\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorage\n*L\n64#1:231,2\n*E\n"})
/* loaded from: classes2.dex */
public final class OkioStorage<T> implements Storage<T> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final Set<String> activeFiles = new LinkedHashSet();
    @NotNull
    private static final Synchronizer activeFilesLock = new Synchronizer();
    @NotNull
    private final i canonicalPath$delegate;
    @NotNull
    private final Function2<Path, FileSystem, InterProcessCoordinator> coordinatorProducer;
    @NotNull
    private final FileSystem fileSystem;
    @NotNull
    private final Function0<Path> producePath;
    @NotNull
    private final OkioSerializer<T> serializer;

    /* compiled from: OkioStorage.kt */
    @Metadata
    /* loaded from: classes2.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final Set<String> getActiveFiles$datastore_core_okio() {
            return OkioStorage.activeFiles;
        }

        @NotNull
        public final Synchronizer getActiveFilesLock() {
            return OkioStorage.activeFilesLock;
        }

        private Companion() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public OkioStorage(@NotNull FileSystem fileSystem, @NotNull OkioSerializer<T> serializer, @NotNull Function2<? super Path, ? super FileSystem, ? extends InterProcessCoordinator> coordinatorProducer, @NotNull Function0<Path> producePath) {
        Intrinsics.checkNotNullParameter(fileSystem, "fileSystem");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(coordinatorProducer, "coordinatorProducer");
        Intrinsics.checkNotNullParameter(producePath, "producePath");
        this.fileSystem = fileSystem;
        this.serializer = serializer;
        this.coordinatorProducer = coordinatorProducer;
        this.producePath = producePath;
        this.canonicalPath$delegate = c.b(new Function0<Path>(this) { // from class: androidx.datastore.core.okio.OkioStorage$canonicalPath$2
            final /* synthetic */ OkioStorage<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Path invoke() {
                Function0 function0;
                Function0 function02;
                function0 = ((OkioStorage) this.this$0).producePath;
                Path path = (Path) function0.invoke();
                boolean isAbsolute = path.isAbsolute();
                OkioStorage<T> okioStorage = this.this$0;
                if (isAbsolute) {
                    return path.normalized();
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("OkioStorage requires absolute paths, but did not get an absolute path from producePath = ");
                function02 = ((OkioStorage) okioStorage).producePath;
                sb2.append(function02);
                sb2.append(", instead got ");
                sb2.append(path);
                throw new IllegalStateException(sb2.toString().toString());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Path getCanonicalPath() {
        return (Path) this.canonicalPath$delegate.getValue();
    }

    @Override // androidx.datastore.core.Storage
    @NotNull
    public StorageConnection<T> createConnection() {
        String path = getCanonicalPath().toString();
        synchronized (activeFilesLock) {
            Set<String> set = activeFiles;
            if (!set.contains(path)) {
                set.add(path);
            } else {
                throw new IllegalStateException(("There are multiple DataStores active for the same file: " + path + ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore's active on the same file (by confirming that the scope is cancelled).").toString());
            }
        }
        return new OkioStorageConnection(this.fileSystem, getCanonicalPath(), this.serializer, this.coordinatorProducer.invoke(getCanonicalPath(), this.fileSystem), new Function0<Unit>(this) { // from class: androidx.datastore.core.okio.OkioStorage$createConnection$2
            final /* synthetic */ OkioStorage<T> this$0;

            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
                this.this$0 = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Path canonicalPath;
                OkioStorage.Companion companion = OkioStorage.Companion;
                Synchronizer activeFilesLock2 = companion.getActiveFilesLock();
                OkioStorage<T> okioStorage = this.this$0;
                synchronized (activeFilesLock2) {
                    Set<String> activeFiles$datastore_core_okio = companion.getActiveFiles$datastore_core_okio();
                    canonicalPath = okioStorage.getCanonicalPath();
                    activeFiles$datastore_core_okio.remove(canonicalPath.toString());
                    Unit unit = Unit.f60915a;
                }
            }
        });
    }

    public /* synthetic */ OkioStorage(FileSystem fileSystem, OkioSerializer okioSerializer, Function2 function2, Function0 function0, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(fileSystem, okioSerializer, (i10 & 4) != 0 ? new Function2<Path, FileSystem, InterProcessCoordinator>() { // from class: androidx.datastore.core.okio.OkioStorage.1
            @Override // kotlin.jvm.functions.Function2
            @NotNull
            public final InterProcessCoordinator invoke(@NotNull Path path, @NotNull FileSystem fileSystem2) {
                Intrinsics.checkNotNullParameter(path, "path");
                Intrinsics.checkNotNullParameter(fileSystem2, "<anonymous parameter 1>");
                return OkioStorageKt.createSingleProcessCoordinator(path);
            }
        } : function2, function0);
    }
}
