package android.support.v4.media;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new a();

    /* renamed from: a  reason: collision with root package name */
    private final String f753a;

    /* renamed from: b  reason: collision with root package name */
    private final CharSequence f754b;

    /* renamed from: c  reason: collision with root package name */
    private final CharSequence f755c;

    /* renamed from: d  reason: collision with root package name */
    private final CharSequence f756d;

    /* renamed from: e  reason: collision with root package name */
    private final Bitmap f757e;

    /* renamed from: f  reason: collision with root package name */
    private final Uri f758f;

    /* renamed from: g  reason: collision with root package name */
    private final Bundle f759g;

    /* renamed from: h  reason: collision with root package name */
    private final Uri f760h;

    /* renamed from: i  reason: collision with root package name */
    private MediaDescription f761i;

    /* loaded from: classes.dex */
    class a implements Parcelable.Creator<MediaDescriptionCompat> {
        a() {
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: a */
        public MediaDescriptionCompat createFromParcel(Parcel parcel) {
            return MediaDescriptionCompat.a(MediaDescription.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        /* renamed from: b */
        public MediaDescriptionCompat[] newArray(int i10) {
            return new MediaDescriptionCompat[i10];
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    /* loaded from: classes.dex */
    public static class b {
        @DoNotInline
        static MediaDescription a(MediaDescription.Builder builder) {
            return builder.build();
        }

        @DoNotInline
        static MediaDescription.Builder b() {
            return new MediaDescription.Builder();
        }

        @Nullable
        @DoNotInline
        static CharSequence c(MediaDescription mediaDescription) {
            return mediaDescription.getDescription();
        }

        @Nullable
        @DoNotInline
        static Bundle d(MediaDescription mediaDescription) {
            return mediaDescription.getExtras();
        }

        @Nullable
        @DoNotInline
        static Bitmap e(MediaDescription mediaDescription) {
            return mediaDescription.getIconBitmap();
        }

        @Nullable
        @DoNotInline
        static Uri f(MediaDescription mediaDescription) {
            return mediaDescription.getIconUri();
        }

        @Nullable
        @DoNotInline
        static String g(MediaDescription mediaDescription) {
            return mediaDescription.getMediaId();
        }

        @Nullable
        @DoNotInline
        static CharSequence h(MediaDescription mediaDescription) {
            return mediaDescription.getSubtitle();
        }

        @Nullable
        @DoNotInline
        static CharSequence i(MediaDescription mediaDescription) {
            return mediaDescription.getTitle();
        }

        @DoNotInline
        static void j(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setDescription(charSequence);
        }

        @DoNotInline
        static void k(MediaDescription.Builder builder, @Nullable Bundle bundle) {
            builder.setExtras(bundle);
        }

        @DoNotInline
        static void l(MediaDescription.Builder builder, @Nullable Bitmap bitmap) {
            builder.setIconBitmap(bitmap);
        }

        @DoNotInline
        static void m(MediaDescription.Builder builder, @Nullable Uri uri) {
            builder.setIconUri(uri);
        }

        @DoNotInline
        static void n(MediaDescription.Builder builder, @Nullable String str) {
            builder.setMediaId(str);
        }

        @DoNotInline
        static void o(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setSubtitle(charSequence);
        }

        @DoNotInline
        static void p(MediaDescription.Builder builder, @Nullable CharSequence charSequence) {
            builder.setTitle(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class c {
        @Nullable
        @DoNotInline
        static Uri a(MediaDescription mediaDescription) {
            return mediaDescription.getMediaUri();
        }

        @DoNotInline
        static void b(MediaDescription.Builder builder, @Nullable Uri uri) {
            builder.setMediaUri(uri);
        }
    }

    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private String f762a;

        /* renamed from: b  reason: collision with root package name */
        private CharSequence f763b;

        /* renamed from: c  reason: collision with root package name */
        private CharSequence f764c;

        /* renamed from: d  reason: collision with root package name */
        private CharSequence f765d;

        /* renamed from: e  reason: collision with root package name */
        private Bitmap f766e;

        /* renamed from: f  reason: collision with root package name */
        private Uri f767f;

        /* renamed from: g  reason: collision with root package name */
        private Bundle f768g;

        /* renamed from: h  reason: collision with root package name */
        private Uri f769h;

        public MediaDescriptionCompat a() {
            return new MediaDescriptionCompat(this.f762a, this.f763b, this.f764c, this.f765d, this.f766e, this.f767f, this.f768g, this.f769h);
        }

        public d b(@Nullable CharSequence charSequence) {
            this.f765d = charSequence;
            return this;
        }

        public d c(@Nullable Bundle bundle) {
            this.f768g = bundle;
            return this;
        }

        public d d(@Nullable Bitmap bitmap) {
            this.f766e = bitmap;
            return this;
        }

        public d e(@Nullable Uri uri) {
            this.f767f = uri;
            return this;
        }

        public d f(@Nullable String str) {
            this.f762a = str;
            return this;
        }

        public d g(@Nullable Uri uri) {
            this.f769h = uri;
            return this;
        }

        public d h(@Nullable CharSequence charSequence) {
            this.f764c = charSequence;
            return this;
        }

        public d i(@Nullable CharSequence charSequence) {
            this.f763b = charSequence;
            return this;
        }
    }

    MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f753a = str;
        this.f754b = charSequence;
        this.f755c = charSequence2;
        this.f756d = charSequence3;
        this.f757e = bitmap;
        this.f758f = uri;
        this.f759g = bundle;
        this.f760h = uri2;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.support.v4.media.MediaDescriptionCompat a(java.lang.Object r8) {
        /*
            r0 = 0
            if (r8 == 0) goto L79
            android.support.v4.media.MediaDescriptionCompat$d r1 = new android.support.v4.media.MediaDescriptionCompat$d
            r1.<init>()
            android.media.MediaDescription r8 = (android.media.MediaDescription) r8
            java.lang.String r2 = android.support.v4.media.MediaDescriptionCompat.b.g(r8)
            r1.f(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.b.i(r8)
            r1.i(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.b.h(r8)
            r1.h(r2)
            java.lang.CharSequence r2 = android.support.v4.media.MediaDescriptionCompat.b.c(r8)
            r1.b(r2)
            android.graphics.Bitmap r2 = android.support.v4.media.MediaDescriptionCompat.b.e(r8)
            r1.d(r2)
            android.net.Uri r2 = android.support.v4.media.MediaDescriptionCompat.b.f(r8)
            r1.e(r2)
            android.os.Bundle r2 = android.support.v4.media.MediaDescriptionCompat.b.d(r8)
            if (r2 == 0) goto L3e
            android.os.Bundle r2 = android.support.v4.media.session.MediaSessionCompat.c(r2)
        L3e:
            java.lang.String r3 = "android.support.v4.media.description.MEDIA_URI"
            if (r2 == 0) goto L49
            android.os.Parcelable r4 = r2.getParcelable(r3)
            android.net.Uri r4 = (android.net.Uri) r4
            goto L4a
        L49:
            r4 = r0
        L4a:
            if (r4 == 0) goto L62
            java.lang.String r5 = "android.support.v4.media.description.NULL_BUNDLE_FLAG"
            boolean r6 = r2.containsKey(r5)
            if (r6 == 0) goto L5c
            int r6 = r2.size()
            r7 = 2
            if (r6 != r7) goto L5c
            goto L63
        L5c:
            r2.remove(r3)
            r2.remove(r5)
        L62:
            r0 = r2
        L63:
            r1.c(r0)
            if (r4 == 0) goto L6c
            r1.g(r4)
            goto L73
        L6c:
            android.net.Uri r0 = android.support.v4.media.MediaDescriptionCompat.c.a(r8)
            r1.g(r0)
        L73:
            android.support.v4.media.MediaDescriptionCompat r0 = r1.a()
            r0.f761i = r8
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.media.MediaDescriptionCompat.a(java.lang.Object):android.support.v4.media.MediaDescriptionCompat");
    }

    public Object b() {
        MediaDescription mediaDescription = this.f761i;
        if (mediaDescription == null) {
            MediaDescription.Builder b10 = b.b();
            b.n(b10, this.f753a);
            b.p(b10, this.f754b);
            b.o(b10, this.f755c);
            b.j(b10, this.f756d);
            b.l(b10, this.f757e);
            b.m(b10, this.f758f);
            b.k(b10, this.f759g);
            c.b(b10, this.f760h);
            MediaDescription a10 = b.a(b10);
            this.f761i = a10;
            return a10;
        }
        return mediaDescription;
    }

    @Nullable
    public String c() {
        return this.f753a;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return ((Object) this.f754b) + ", " + ((Object) this.f755c) + ", " + ((Object) this.f756d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        ((MediaDescription) b()).writeToParcel(parcel, i10);
    }
}
