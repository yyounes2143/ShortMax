package io.bidmachine.iab.vast;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.media.ThumbnailUtils;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import io.bidmachine.iab.CacheControl;
import io.bidmachine.iab.measurer.MraidAdMeasurer;
import io.bidmachine.iab.measurer.VastAdMeasurer;
import io.bidmachine.iab.vast.VastUrlProcessorRegistry;
import io.bidmachine.iab.vast.activity.VastActivity;
import io.bidmachine.iab.vast.activity.VastView;
import io.bidmachine.iab.vast.processor.DefaultMediaPicker;
import io.bidmachine.iab.vast.processor.VastAd;
import io.bidmachine.iab.vast.processor.VastMediaPicker;
import io.bidmachine.iab.vast.tags.AppodealExtensionTag;
import io.bidmachine.iab.vast.tags.MediaFileTag;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import sm.q;
/* loaded from: classes7.dex */
public class a {
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Uri f54693c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private VastAd f54694d;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Bundle f54696f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private VastMediaPicker<MediaFileTag> f54697g;
    @Nullable

    /* renamed from: h  reason: collision with root package name */
    private tm.h f54698h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private VastAdMeasurer f54699i;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private Float f54701k;

    /* renamed from: l  reason: collision with root package name */
    private float f54702l;

    /* renamed from: m  reason: collision with root package name */
    private boolean f54703m;

    /* renamed from: n  reason: collision with root package name */
    private int f54704n;

    /* renamed from: p  reason: collision with root package name */
    private boolean f54706p;
    @NonNull

    /* renamed from: z  reason: collision with root package name */
    private static final VastUrlProcessorRegistry.b f54690z = new j();
    private static int A = 5;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private CacheControl f54692b = CacheControl.FullLoad;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    private VideoType f54695e = VideoType.NonRewarded;

    /* renamed from: j  reason: collision with root package name */
    private float f54700j = 3.0f;

    /* renamed from: o  reason: collision with root package name */
    private int f54705o = 0;

    /* renamed from: q  reason: collision with root package name */
    private boolean f54707q = false;

    /* renamed from: r  reason: collision with root package name */
    private boolean f54708r = true;

    /* renamed from: s  reason: collision with root package name */
    private boolean f54709s = true;

    /* renamed from: t  reason: collision with root package name */
    private boolean f54710t = false;

    /* renamed from: u  reason: collision with root package name */
    private boolean f54711u = false;

    /* renamed from: v  reason: collision with root package name */
    private int f54712v = -1;

    /* renamed from: w  reason: collision with root package name */
    private float f54713w = 5.0f;
    @NonNull

    /* renamed from: x  reason: collision with root package name */
    private final AtomicBoolean f54714x = new AtomicBoolean(false);
    @NonNull

    /* renamed from: y  reason: collision with root package name */
    private final AtomicBoolean f54715y = new AtomicBoolean(false);
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final String f54691a = UUID.randomUUID().toString();

    /* renamed from: io.bidmachine.iab.vast.a$a  reason: collision with other inner class name */
    /* loaded from: classes7.dex */
    public class C0794a {
        public C0794a() {
        }

        @NonNull
        public a a() {
            return a.this;
        }

        public C0794a b(boolean z10) {
            a.this.f54703m = z10;
            return this;
        }

        public C0794a c(@Nullable VastAdMeasurer vastAdMeasurer) {
            a.this.f54699i = vastAdMeasurer;
            return this;
        }

        public C0794a d(@NonNull CacheControl cacheControl) {
            a.this.f54692b = cacheControl;
            return this;
        }

        public C0794a e(int i10) {
            a.this.f54702l = i10;
            return this;
        }

        public C0794a f(float f10) {
            a.this.f54700j = f10;
            return this;
        }

        public C0794a g(int i10) {
            a.this.f54701k = Float.valueOf(i10);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static /* synthetic */ class b {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f54717a;

        static {
            int[] iArr = new int[CacheControl.values().length];
            f54717a = iArr;
            try {
                iArr[CacheControl.FullLoad.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f54717a[CacheControl.Stream.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f54717a[CacheControl.PartialLoad.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes7.dex */
    class c extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f54718a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f54719b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ tm.e f54720c;

        c(Context context, String str, tm.e eVar) {
            this.f54718a = context;
            this.f54719b = str;
            this.f54720c = eVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            a.this.U(this.f54718a, this.f54719b, this.f54720c);
        }
    }

    /* loaded from: classes7.dex */
    class d extends Thread {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f54722a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ tm.e f54723b;

        d(Context context, tm.e eVar) {
            this.f54722a = context;
            this.f54723b = eVar;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.i(this.f54722a, aVar.f54694d, this.f54723b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class e implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ tm.e f54725a;

        e(tm.e eVar) {
            this.f54725a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f54725a.b(a.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class f implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ qm.a f54727a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ tm.e f54728b;

        f(qm.a aVar, tm.e eVar) {
            this.f54727a = aVar;
            this.f54728b = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f54699i != null) {
                a.this.f54699i.c(this.f54727a);
            }
            if (this.f54728b != null) {
                if (a.this.f54692b == CacheControl.PartialLoad && a.this.f54714x.get() && !a.this.f54715y.get()) {
                    tm.e eVar = this.f54728b;
                    a aVar = a.this;
                    eVar.a(aVar, qm.a.b(String.format("%s load failed after display - %s", aVar.f54692b, this.f54727a)));
                    return;
                }
                this.f54728b.a(a.this, this.f54727a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class g implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ tm.a f54730a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ qm.a f54731b;

        g(tm.a aVar, qm.a aVar2) {
            this.f54730a = aVar;
            this.f54731b = aVar2;
        }

        @Override // java.lang.Runnable
        public void run() {
            tm.a aVar = this.f54730a;
            if (aVar != null) {
                aVar.b(a.this, this.f54731b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class h implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ VastAd f54733a;

        h(VastAd vastAd) {
            this.f54733a = vastAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f54698h != null) {
                a.this.f54698h.a(a.this, this.f54733a);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public class i implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ qm.a f54735a;

        i(qm.a aVar) {
            this.f54735a = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.f54698h != null) {
                a.this.f54698h.b(a.this, this.f54735a);
            }
        }
    }

    /* loaded from: classes7.dex */
    static class j implements VastUrlProcessorRegistry.b {
        j() {
        }

        @Override // io.bidmachine.iab.vast.VastUrlProcessorRegistry.b
        public void a(@Nullable String str) {
            tm.d.a("VastRequest", "Fire url: %s", str);
            q.K(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes7.dex */
    public static class k implements Comparable {

        /* renamed from: a  reason: collision with root package name */
        public long f54737a;

        /* renamed from: b  reason: collision with root package name */
        public File f54738b;

        public k(File file) {
            this.f54738b = file;
            this.f54737a = file.lastModified();
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull Object obj) {
            int i10 = (this.f54737a > ((k) obj).f54737a ? 1 : (this.f54737a == ((k) obj).f54737a ? 0 : -1));
            if (i10 > 0) {
                return -1;
            }
            if (i10 == 0) {
                return 0;
            }
            return 1;
        }
    }

    private a() {
    }

    public static C0794a V() {
        return new C0794a();
    }

    public static void Y(int i10) {
        if (i10 > 0) {
            A = i10;
        }
    }

    @Nullable
    private Uri b(@NonNull Context context, @NonNull String str) {
        String s10 = s(context);
        if (s10 != null) {
            File file = new File(s10);
            if (!file.exists()) {
                file.mkdirs();
            }
            String str2 = "temp" + System.currentTimeMillis();
            String replace = str.substring(0, Math.min(230 - file.getPath().length(), str.length())).replace(DomExceptionUtils.SEPARATOR, "").replace(":", "");
            File file2 = new File(file, replace);
            if (file2.exists()) {
                return Uri.fromFile(file2);
            }
            File file3 = new File(file, str2);
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            InputStream inputStream = httpURLConnection.getInputStream();
            FileOutputStream fileOutputStream = new FileOutputStream(file3);
            long contentLength = httpURLConnection.getContentLength();
            byte[] bArr = new byte[1024];
            long j10 = 0;
            while (true) {
                int read = inputStream.read(bArr);
                if (read <= 0) {
                    break;
                }
                fileOutputStream.write(bArr, 0, read);
                j10 += read;
            }
            fileOutputStream.close();
            if (contentLength == j10) {
                file3.renameTo(new File(file, replace));
                return Uri.fromFile(new File(file, replace));
            }
            throw new IllegalStateException("The downloaded file size does not match the stated size");
        }
        throw new FileNotFoundException("No dir for caching file");
    }

    @NonNull
    private Float g(@NonNull VastAd vastAd, @Nullable tm.b bVar) {
        Float f10;
        if (bVar != null) {
            f10 = bVar.i();
        } else {
            f10 = null;
        }
        if (Q()) {
            f10 = q.A(f10, N());
        }
        Float B = q.B(f10, vastAd.o());
        if (B == null) {
            return Float.valueOf(5.0f);
        }
        return B;
    }

    private void h(@NonNull Context context) {
        File[] listFiles;
        try {
            String s10 = s(context);
            if (s10 != null && (listFiles = new File(s10).listFiles()) != null && listFiles.length > A) {
                k[] kVarArr = new k[listFiles.length];
                for (int i10 = 0; i10 < listFiles.length; i10++) {
                    kVarArr[i10] = new k(listFiles[i10]);
                }
                Arrays.sort(kVarArr);
                for (int i11 = 0; i11 < listFiles.length; i11++) {
                    listFiles[i11] = kVarArr[i11].f54738b;
                }
                for (int i12 = A; i12 < listFiles.length; i12++) {
                    if (!Uri.fromFile(listFiles[i12]).equals(this.f54693c)) {
                        listFiles[i12].delete();
                    }
                }
            }
        } catch (Exception e10) {
            tm.d.c("VastRequest", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(@NonNull Context context, @NonNull VastAd vastAd, @Nullable tm.e eVar) {
        try {
            Uri b10 = b(context, vastAd.x().P());
            if (b10 != null && !TextUtils.isEmpty(b10.getPath()) && new File(b10.getPath()).exists()) {
                Bitmap createVideoThumbnail = ThumbnailUtils.createVideoThumbnail(b10.getPath(), 1);
                if (createVideoThumbnail != null) {
                    if (!createVideoThumbnail.equals(Bitmap.createBitmap(createVideoThumbnail.getWidth(), createVideoThumbnail.getHeight(), createVideoThumbnail.getConfig()))) {
                        try {
                            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
                            mediaMetadataRetriever.setDataSource(context, b10);
                            long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                            int i10 = this.f54704n;
                            if (i10 != 0 && parseLong > i10) {
                                X(tm.g.f67418d);
                                n(qm.a.a("Estimated duration does not match actual duration"), eVar);
                            }
                            this.f54693c = b10;
                            k(vastAd);
                            o(eVar);
                        } catch (Exception e10) {
                            tm.d.c("VastRequest", e10);
                            X(tm.g.f67425k);
                            n(qm.a.j("Exception during metadata retrieval", e10), eVar);
                        }
                    } else {
                        tm.d.a("VastRequest", "Empty thumbnail", new Object[0]);
                        X(tm.g.f67425k);
                        n(qm.a.a("Thumbnail is empty"), eVar);
                    }
                } else {
                    tm.d.a("VastRequest", "Video file not supported", new Object[0]);
                    X(tm.g.f67425k);
                    n(qm.a.a("Failed to get thumbnail by file URI"), eVar);
                }
                h(context);
                return;
            }
            tm.d.a("VastRequest", "fileUri is null", new Object[0]);
            X(tm.g.f67420f);
            n(qm.a.a("Can't find video by local URI"), eVar);
        } catch (Exception e11) {
            tm.d.c("VastRequest", e11);
            X(tm.g.f67420f);
            n(qm.a.j("Exception during caching media file", e11), eVar);
        }
    }

    private synchronized void k(@NonNull VastAd vastAd) {
        if (this.f54698h == null) {
            return;
        }
        q.D(new h(vastAd));
    }

    private synchronized void l(@NonNull qm.a aVar) {
        if (this.f54698h == null) {
            return;
        }
        q.D(new i(aVar));
    }

    private void m(@NonNull qm.a aVar, @Nullable tm.a aVar2) {
        tm.d.a("VastRequest", "sendShowFailed - %s", aVar);
        q.D(new g(aVar2, aVar));
    }

    private void n(@NonNull qm.a aVar, @Nullable tm.e eVar) {
        tm.d.a("VastRequest", "sendLoadFailed - %s", aVar);
        l(aVar);
        q.D(new f(aVar, eVar));
    }

    private void o(@Nullable tm.e eVar) {
        if (this.f54714x.getAndSet(true)) {
            return;
        }
        tm.d.a("VastRequest", "sendLoaded", new Object[0]);
        if (eVar != null) {
            q.D(new e(eVar));
        }
    }

    @Nullable
    private String s(@NonNull Context context) {
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir == null) {
            return null;
        }
        return externalFilesDir.getPath() + "/vast_rtb_cache/";
    }

    public void A(@Nullable List<String> list, @Nullable Bundle bundle) {
        B(list, bundle);
    }

    public void B(@Nullable List<String> list, @Nullable Bundle bundle) {
        Bundle bundle2 = new Bundle();
        Bundle bundle3 = this.f54696f;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
        }
        if (list != null) {
            VastUrlProcessorRegistry.b(list, bundle2, f54690z);
        } else {
            tm.d.a("VastRequest", "Url list is null", new Object[0]);
        }
    }

    @NonNull
    public CacheControl C() {
        return this.f54692b;
    }

    public float D() {
        return this.f54702l;
    }

    @Nullable
    public Uri E() {
        return this.f54693c;
    }

    public int F() {
        return this.f54712v;
    }

    public float G() {
        return this.f54713w;
    }

    @NonNull
    public String H() {
        return this.f54691a;
    }

    public int I() {
        return this.f54704n;
    }

    public float J() {
        return this.f54700j;
    }

    public int K() {
        if (!c0()) {
            return 0;
        }
        VastAd vastAd = this.f54694d;
        if (vastAd != null) {
            MediaFileTag x10 = vastAd.x();
            return q.F(x10.k0(), x10.Z());
        }
        return 2;
    }

    public int L() {
        return this.f54705o;
    }

    @Nullable
    public VastAd M() {
        return this.f54694d;
    }

    @Nullable
    public Float N() {
        return this.f54701k;
    }

    @NonNull
    public VideoType O() {
        return this.f54695e;
    }

    public boolean P() {
        return this.f54706p;
    }

    public boolean Q() {
        return this.f54703m;
    }

    public boolean R() {
        return this.f54710t;
    }

    public boolean S() {
        return this.f54711u;
    }

    public void T(@NonNull Context context, @NonNull String str, @Nullable tm.e eVar) {
        tm.d.a("VastRequest", "loadVideoWithData\n%s", str);
        this.f54694d = null;
        if (q.x(context)) {
            try {
                new c(context, str, eVar).start();
                return;
            } catch (Exception e10) {
                tm.d.c("VastRequest", e10);
                n(qm.a.j("Exception during creating background thread", e10), eVar);
                return;
            }
        }
        n(qm.a.f65373c, eVar);
    }

    public void U(@NonNull Context context, @NonNull String str, @Nullable tm.e eVar) {
        String str2;
        VastMediaPicker vastMediaPicker = this.f54697g;
        if (vastMediaPicker == null) {
            vastMediaPicker = new DefaultMediaPicker(context);
        }
        io.bidmachine.iab.vast.processor.b l10 = new io.bidmachine.iab.vast.processor.a(this, vastMediaPicker).l(str);
        VastAd g10 = l10.g();
        this.f54694d = g10;
        if (g10 == null) {
            tm.g h10 = l10.h();
            if (h10 != null) {
                X(h10);
                str2 = String.format("VastAd is null during loadVideoWithDataSync with VastSpecCode - %s", Integer.valueOf(h10.a()));
            } else {
                str2 = "VastAd is null during loadVideoWithDataSync without VastSpecCode";
            }
            n(qm.a.a(str2), eVar);
            return;
        }
        g10.B(this);
        AppodealExtensionTag j10 = this.f54694d.j();
        if (j10 != null) {
            Boolean t10 = j10.t();
            if (t10 != null) {
                if (t10.booleanValue()) {
                    this.f54707q = false;
                    this.f54708r = false;
                } else {
                    this.f54707q = true;
                    this.f54708r = true;
                }
            }
            if (j10.f().Z() > 0.0f) {
                this.f54702l = j10.f().Z();
            }
            this.f54710t = j10.q();
            this.f54711u = j10.n();
            Integer h11 = j10.h();
            if (h11 != null) {
                this.f54712v = h11.intValue();
            }
        }
        this.f54713w = g(this.f54694d, j10).floatValue();
        VastAdMeasurer vastAdMeasurer = this.f54699i;
        if (vastAdMeasurer != null) {
            vastAdMeasurer.o(this);
        }
        int i10 = b.f54717a[this.f54692b.ordinal()];
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 == 3) {
                    o(eVar);
                    i(context, this.f54694d, eVar);
                    return;
                }
                return;
            }
            o(eVar);
            return;
        }
        i(context, this.f54694d, eVar);
    }

    public void W(@NonNull Context context, @Nullable tm.e eVar) {
        if (this.f54694d == null) {
            n(qm.a.f("VastAd is null during performCache"), eVar);
            return;
        }
        try {
            new d(context, eVar).start();
        } catch (Exception e10) {
            tm.d.c("VastRequest", e10);
            n(qm.a.j("Exception during creating background thread", e10), eVar);
        }
    }

    public void X(@NonNull tm.g gVar) {
        tm.d.a("VastRequest", "sendVastSpecError - %s", gVar);
        try {
            if (this.f54694d != null) {
                Bundle bundle = new Bundle();
                bundle.putInt("params_error_code", gVar.a());
                A(this.f54694d.p(), bundle);
            }
        } catch (Exception e10) {
            tm.d.c("VastRequest", e10);
        }
    }

    public synchronized void Z(@Nullable tm.h hVar) {
        this.f54698h = hVar;
    }

    public boolean a0() {
        return this.f54709s;
    }

    public boolean b0() {
        return this.f54708r;
    }

    public boolean c0() {
        return this.f54707q;
    }

    public boolean u() {
        if (this.f54714x.get() && (this.f54692b != CacheControl.FullLoad || v())) {
            return true;
        }
        return false;
    }

    public boolean v() {
        try {
            Uri uri = this.f54693c;
            if (uri == null || TextUtils.isEmpty(uri.getPath())) {
                return false;
            }
            if (!new File(this.f54693c.getPath()).exists()) {
                return false;
            }
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void x(@NonNull Context context, @NonNull VideoType videoType, @Nullable tm.a aVar, @Nullable VastView vastView, @Nullable VastPlaybackListener vastPlaybackListener, @Nullable MraidAdMeasurer mraidAdMeasurer) {
        tm.d.a("VastRequest", "display", new Object[0]);
        this.f54715y.set(true);
        if (this.f54694d == null) {
            m(qm.a.f("VastAd is null during display VastActivity"), aVar);
            return;
        }
        this.f54695e = videoType;
        this.f54705o = context.getResources().getConfiguration().orientation;
        qm.a b10 = new VastActivity.a().g(this).d(aVar).h(vastView).e(vastPlaybackListener).c(this.f54699i).f(mraidAdMeasurer).b(context);
        if (b10 != null) {
            m(b10, aVar);
        }
    }
}
