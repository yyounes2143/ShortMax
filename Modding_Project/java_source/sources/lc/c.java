package lc;

import android.content.Context;
import android.text.TextUtils;
import com.ss.mediakit.medialoader.AVMDLDataLoaderConfigure;
import java.io.File;
/* compiled from: VodConfig.java */
/* loaded from: classes6.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private final String f62152a;

    /* renamed from: b  reason: collision with root package name */
    private final int f62153b;

    /* renamed from: c  reason: collision with root package name */
    private final int f62154c;

    /* compiled from: VodConfig.java */
    /* loaded from: classes6.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        private final Context f62155a;

        /* renamed from: b  reason: collision with root package name */
        private String f62156b;

        /* renamed from: c  reason: collision with root package name */
        private int f62157c = AVMDLDataLoaderConfigure.DEFAULT_MAX_CACHE_SIZE;

        /* renamed from: d  reason: collision with root package name */
        private int f62158d = 0;

        public b(Context context) {
            this.f62155a = context;
            this.f62156b = new File(context.getCacheDir(), "video_cache").getAbsolutePath();
        }

        public c d() {
            if (TextUtils.isEmpty(this.f62156b)) {
                this.f62156b = new File(this.f62155a.getCacheDir(), "video_cache").getAbsolutePath();
            }
            return new c(this);
        }

        public b e(String str) {
            this.f62156b = str;
            return this;
        }

        public b f(int i10) {
            this.f62157c = i10;
            return this;
        }
    }

    public String a() {
        return this.f62152a;
    }

    public int b() {
        return this.f62154c;
    }

    public int c() {
        return this.f62153b;
    }

    public String toString() {
        return "VodConfig{cacheDirPath='" + this.f62152a + "', maxCacheSize=" + this.f62153b + ", loaderType=" + this.f62154c + '}';
    }

    private c(b bVar) {
        this.f62152a = bVar.f62156b;
        this.f62153b = bVar.f62157c;
        this.f62154c = bVar.f62158d;
    }
}
