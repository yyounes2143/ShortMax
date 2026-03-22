package io.bidmachine.media3.exoplayer.hls.playlist;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import io.bidmachine.media3.common.DrmInitData;
import io.bidmachine.media3.common.StreamKey;
import io.bidmachine.media3.common.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: HlsMultivariantPlaylist.java */
/* loaded from: classes8.dex */
public final class d extends nn.d {

    /* renamed from: n  reason: collision with root package name */
    public static final d f56266n = new d("", Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, Collections.emptyList(), false, Collections.emptyMap(), Collections.emptyList());

    /* renamed from: d  reason: collision with root package name */
    public final List<Uri> f56267d;

    /* renamed from: e  reason: collision with root package name */
    public final List<b> f56268e;

    /* renamed from: f  reason: collision with root package name */
    public final List<a> f56269f;

    /* renamed from: g  reason: collision with root package name */
    public final List<a> f56270g;

    /* renamed from: h  reason: collision with root package name */
    public final List<a> f56271h;

    /* renamed from: i  reason: collision with root package name */
    public final List<a> f56272i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    public final io.bidmachine.media3.common.a f56273j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    public final List<io.bidmachine.media3.common.a> f56274k;

    /* renamed from: l  reason: collision with root package name */
    public final Map<String, String> f56275l;

    /* renamed from: m  reason: collision with root package name */
    public final List<DrmInitData> f56276m;

    /* compiled from: HlsMultivariantPlaylist.java */
    /* loaded from: classes8.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public final Uri f56277a;

        /* renamed from: b  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f56278b;

        /* renamed from: c  reason: collision with root package name */
        public final String f56279c;

        /* renamed from: d  reason: collision with root package name */
        public final String f56280d;

        public a(@Nullable Uri uri, io.bidmachine.media3.common.a aVar, String str, String str2) {
            this.f56277a = uri;
            this.f56278b = aVar;
            this.f56279c = str;
            this.f56280d = str2;
        }
    }

    /* compiled from: HlsMultivariantPlaylist.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final Uri f56281a;

        /* renamed from: b  reason: collision with root package name */
        public final io.bidmachine.media3.common.a f56282b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        public final String f56283c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        public final String f56284d;
        @Nullable

        /* renamed from: e  reason: collision with root package name */
        public final String f56285e;
        @Nullable

        /* renamed from: f  reason: collision with root package name */
        public final String f56286f;

        public b(Uri uri, io.bidmachine.media3.common.a aVar, @Nullable String str, @Nullable String str2, @Nullable String str3, @Nullable String str4) {
            this.f56281a = uri;
            this.f56282b = aVar;
            this.f56283c = str;
            this.f56284d = str2;
            this.f56285e = str3;
            this.f56286f = str4;
        }

        public static b b(Uri uri) {
            return new b(uri, new a.b().f0(MBridgeConstans.ENDCARD_URL_TYPE_PL).U(MimeTypes.APPLICATION_M3U8).N(), null, null, null, null);
        }

        public b a(io.bidmachine.media3.common.a aVar) {
            return new b(this.f56281a, aVar, this.f56283c, this.f56284d, this.f56285e, this.f56286f);
        }
    }

    public d(String str, List<String> list, List<b> list2, List<a> list3, List<a> list4, List<a> list5, List<a> list6, @Nullable io.bidmachine.media3.common.a aVar, @Nullable List<io.bidmachine.media3.common.a> list7, boolean z10, Map<String, String> map, List<DrmInitData> list8) {
        super(str, list, z10);
        List<io.bidmachine.media3.common.a> list9;
        this.f56267d = Collections.unmodifiableList(e(list2, list3, list4, list5, list6));
        this.f56268e = Collections.unmodifiableList(list2);
        this.f56269f = Collections.unmodifiableList(list3);
        this.f56270g = Collections.unmodifiableList(list4);
        this.f56271h = Collections.unmodifiableList(list5);
        this.f56272i = Collections.unmodifiableList(list6);
        this.f56273j = aVar;
        if (list7 != null) {
            list9 = Collections.unmodifiableList(list7);
        } else {
            list9 = null;
        }
        this.f56274k = list9;
        this.f56275l = Collections.unmodifiableMap(map);
        this.f56276m = Collections.unmodifiableList(list8);
    }

    private static void a(List<a> list, List<Uri> list2) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = list.get(i10).f56277a;
            if (uri != null && !list2.contains(uri)) {
                list2.add(uri);
            }
        }
    }

    private static <T> List<T> c(List<T> list, int i10, List<StreamKey> list2) {
        ArrayList arrayList = new ArrayList(list2.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            T t10 = list.get(i11);
            int i12 = 0;
            while (true) {
                if (i12 < list2.size()) {
                    StreamKey streamKey = list2.get(i12);
                    if (streamKey.f55132b == i10 && streamKey.f55133c == i11) {
                        arrayList.add(t10);
                        break;
                    }
                    i12++;
                }
            }
        }
        return arrayList;
    }

    public static d d(String str) {
        return new d("", Collections.emptyList(), Collections.singletonList(b.b(Uri.parse(str))), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), Collections.emptyList(), null, null, false, Collections.emptyMap(), Collections.emptyList());
    }

    private static List<Uri> e(List<b> list, List<a> list2, List<a> list3, List<a> list4, List<a> list5) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            Uri uri = list.get(i10).f56281a;
            if (!arrayList.contains(uri)) {
                arrayList.add(uri);
            }
        }
        a(list2, arrayList);
        a(list3, arrayList);
        a(list4, arrayList);
        a(list5, arrayList);
        return arrayList;
    }

    @Override // rn.b
    /* renamed from: b */
    public d copy(List<StreamKey> list) {
        return new d(this.f62984a, this.f62985b, c(this.f56268e, 0, list), Collections.emptyList(), c(this.f56270g, 1, list), c(this.f56271h, 2, list), Collections.emptyList(), this.f56273j, this.f56274k, this.f62986c, this.f56275l, this.f56276m);
    }
}
