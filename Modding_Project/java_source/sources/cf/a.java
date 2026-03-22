package cf;

import android.content.Context;
import com.mbridge.msdk.MBridgeConstans;
import com.startshorts.androidplayer.log.Logger;
import fk.u;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: FileManager.kt */
@Metadata
/* loaded from: classes6.dex */
public final class a {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final a f3491a = new a();

    private a() {
    }

    @NotNull
    public final File a() {
        String str;
        File file = new File(b(), MBridgeConstans.DYNAMIC_VIEW_WX_APP);
        if (!file.exists()) {
            boolean mkdir = file.mkdir();
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("create Directory(app) ");
            if (mkdir) {
                str = "success";
            } else {
                str = "failed";
            }
            sb2.append(str);
            logger.h("FileManager", sb2.toString());
        }
        return file;
    }

    @NotNull
    public final File b() {
        String str;
        File dir = u.f51776a.b().getDir("log", 0);
        if (!dir.exists()) {
            boolean mkdir = dir.mkdir();
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("create Directory(log) ");
            if (mkdir) {
                str = "success";
            } else {
                str = "failed";
            }
            sb2.append(str);
            logger.h("FileManager", sb2.toString());
        }
        Intrinsics.checkNotNull(dir);
        return dir;
    }

    @NotNull
    public final File c() {
        Context b10 = u.f51776a.b();
        File externalFilesDir = b10.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            File dir = b10.getDir("root", 0);
            Intrinsics.checkNotNullExpressionValue(dir, "getDir(...)");
            return dir;
        }
        return externalFilesDir;
    }

    @NotNull
    public final File d() {
        String str;
        File file = new File(u.f51776a.b().getCacheDir(), "video");
        if (!file.exists()) {
            boolean mkdir = file.mkdir();
            Logger logger = Logger.f41511a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("create Directory(video) ");
            if (mkdir) {
                str = "success";
            } else {
                str = "failed";
            }
            sb2.append(str);
            logger.h("FileManager", sb2.toString());
        }
        return file;
    }
}
