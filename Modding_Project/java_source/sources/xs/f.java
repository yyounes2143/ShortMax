package xs;

import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: PathUtils.kt */
@Metadata
@SourceDebugExtension({"SMAP\nPathUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PathUtils.kt\nkotlin/io/path/PathsKt__PathUtilsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1253:1\n1#2:1254\n1863#3,2:1255\n*S KotlinDebug\n*F\n+ 1 PathUtils.kt\nkotlin/io/path/PathsKt__PathUtilsKt\n*L\n440#1:1255,2\n*E\n"})
/* loaded from: classes8.dex */
public class f extends c {
    @NotNull
    public static final List<Path> a(@NotNull Path path, @NotNull String glob) throws IOException {
        DirectoryStream newDirectoryStream;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(glob, "glob");
        newDirectoryStream = Files.newDirectoryStream(path, glob);
        try {
            DirectoryStream a10 = e.a(newDirectoryStream);
            Intrinsics.checkNotNull(a10);
            List<Path> d12 = CollectionsKt.d1(a10);
            ws.b.a(newDirectoryStream, null);
            return d12;
        } finally {
        }
    }

    public static /* synthetic */ List b(Path path, String str, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            str = ProxyConfig.MATCH_ALL_SCHEMES;
        }
        return a(path, str);
    }
}
