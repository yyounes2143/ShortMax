package mp;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.ImageData;
import io.bidmachine.MediaAssetType;
import java.io.File;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import np.c;
import np.d;
import np.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AssetLoader.java */
/* loaded from: classes8.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final List<Runnable> f62572a = new CopyOnWriteArrayList();

    /* renamed from: b  reason: collision with root package name */
    private final io.bidmachine.nativead.a f62573b;

    /* renamed from: c  reason: collision with root package name */
    private final AdProcessCallback f62574c;

    /* renamed from: d  reason: collision with root package name */
    private final e f62575d;

    /* renamed from: e  reason: collision with root package name */
    private final g f62576e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AssetLoader.java */
    /* renamed from: mp.a$a  reason: collision with other inner class name */
    /* loaded from: classes8.dex */
    public class C0873a implements c.InterfaceC0879c {
        C0873a() {
        }

        @Override // np.c.InterfaceC0879c
        public void a(@NonNull np.c cVar) {
            a.this.o(cVar);
        }

        @Override // np.c.InterfaceC0879c
        public void b(@NonNull np.c cVar, Uri uri) {
            a.this.f62576e.e(uri);
            a.this.o(cVar);
        }

        @Override // np.c.InterfaceC0879c
        public void c(@NonNull np.c cVar, Bitmap bitmap) {
            a.this.f62576e.l(bitmap);
            a.this.o(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AssetLoader.java */
    /* loaded from: classes8.dex */
    public class b implements c.InterfaceC0879c {
        b() {
        }

        @Override // np.c.InterfaceC0879c
        public void a(@NonNull np.c cVar) {
            a.this.o(cVar);
        }

        @Override // np.c.InterfaceC0879c
        public void b(@NonNull np.c cVar, Uri uri) {
            a.this.f62576e.f(uri);
            a.this.o(cVar);
        }

        @Override // np.c.InterfaceC0879c
        public void c(@NonNull np.c cVar, Bitmap bitmap) {
            a.this.f62576e.i(bitmap);
            a.this.o(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AssetLoader.java */
    /* loaded from: classes8.dex */
    public class c implements e.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f62579a;

        c(Context context) {
            this.f62579a = context;
        }

        @Override // np.e.b
        public void a(@NonNull np.e eVar, Uri uri) {
            a.this.f62576e.j(uri);
            a.this.p(this.f62579a, uri);
            a.this.o(eVar);
        }

        @Override // np.e.b
        public void b(@NonNull np.e eVar) {
            a.this.o(eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AssetLoader.java */
    /* loaded from: classes8.dex */
    public class d implements d.b {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f62581a;

        d(Context context) {
            this.f62581a = context;
        }

        @Override // np.d.b
        public void a(@NonNull np.d dVar, Uri uri, io.bidmachine.iab.vast.a aVar) {
            a.this.f62576e.j(uri);
            a.this.f62576e.b(aVar);
            a.this.p(this.f62581a, uri);
            a.this.o(dVar);
        }

        @Override // np.d.b
        public void b(@NonNull np.d dVar) {
            a.this.o(dVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(@NonNull io.bidmachine.nativead.a aVar, @NonNull AdProcessCallback adProcessCallback, @NonNull e eVar, @NonNull g gVar) {
        this.f62573b = aVar;
        this.f62574c = adProcessCallback;
        this.f62575d = eVar;
        this.f62576e = gVar;
    }

    private void d() {
        if (this.f62572a.isEmpty()) {
            n();
        }
    }

    private void e(@NonNull Context context, @Nullable ImageData imageData) {
        if (imageData == null || imageData.getImage() != null) {
            return;
        }
        String remoteUrl = imageData.getRemoteUrl();
        if (TextUtils.isEmpty(remoteUrl)) {
            return;
        }
        this.f62572a.add(np.c.j(context, remoteUrl).b(new C0873a()).a());
    }

    private void f(@NonNull Context context, @Nullable ImageData imageData) {
        if (imageData == null || imageData.getImage() != null) {
            return;
        }
        String remoteUrl = imageData.getRemoteUrl();
        if (TextUtils.isEmpty(remoteUrl)) {
            return;
        }
        this.f62572a.add(np.c.j(context, remoteUrl).b(new b()).a());
    }

    private void g(@NonNull Context context, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f62572a.add(new np.d(context, new d(context), str));
    }

    private void h(@NonNull Context context, @Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f62572a.add(new np.e(context, new c(context), str));
    }

    private boolean j() {
        try {
            if (!k() || !l()) {
                return false;
            }
            if (!m()) {
                return false;
            }
            return true;
        } catch (Exception e10) {
            io.bidmachine.core.a.m(e10);
            return false;
        }
    }

    private boolean k() {
        if (!this.f62573b.a(MediaAssetType.Icon) || this.f62576e.getIconUri() != null || this.f62576e.k() != null) {
            return true;
        }
        return false;
    }

    private boolean l() {
        if (!this.f62573b.a(MediaAssetType.Image) || this.f62576e.getImageUri() != null || this.f62576e.d() != null) {
            return true;
        }
        return false;
    }

    private boolean m() {
        if (this.f62573b.a(MediaAssetType.Video)) {
            return this.f62575d.hasVideo();
        }
        return true;
    }

    private synchronized void n() {
        try {
            if (this.f62573b.c() && !j()) {
                this.f62574c.processLoadFail(fr.a.i("Native assets are invalid"));
            } else {
                this.f62574c.processLoadSuccess();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(@NonNull Runnable runnable) {
        this.f62572a.remove(runnable);
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(@NonNull Context context, @Nullable Uri uri) {
        String str;
        ImageData mainImage = this.f62575d.getMainImage();
        if (mainImage != null) {
            str = mainImage.getRemoteUrl();
        } else {
            str = null;
        }
        if (TextUtils.isEmpty(str) && uri != null && uri.getPath() != null && new File(uri.getPath()).exists()) {
            this.f62576e.f(Uri.parse(io.bidmachine.core.g.j0(context, uri, "native_cache_image")));
        }
    }

    private void q(@NonNull Context context) {
        String g10 = this.f62575d.g();
        String o10 = this.f62575d.o();
        if (this.f62573b.a(MediaAssetType.Icon)) {
            e(context, this.f62575d.getIcon());
        }
        if (this.f62573b.a(MediaAssetType.Image)) {
            f(context, this.f62575d.getMainImage());
        }
        if (this.f62573b.a(MediaAssetType.Video)) {
            if (!TextUtils.isEmpty(g10)) {
                h(context, g10);
            } else if (!TextUtils.isEmpty(o10)) {
                g(context, o10);
            }
        }
        if (this.f62572a.isEmpty()) {
            d();
            return;
        }
        for (Runnable runnable : this.f62572a) {
            op.b.a().execute(runnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(@NonNull Context context) {
        q(context);
        d();
    }
}
