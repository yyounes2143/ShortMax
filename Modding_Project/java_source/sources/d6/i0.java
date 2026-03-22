package d6;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import b7.o0;
import com.google.android.exoplayer2.ParserException;
import java.util.Collections;
import java.util.List;
/* compiled from: TsPayloadReader.java */
/* loaded from: classes4.dex */
public interface i0 {

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f49966a;

        /* renamed from: b  reason: collision with root package name */
        public final int f49967b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f49968c;

        public a(String str, int i10, byte[] bArr) {
            this.f49966a = str;
            this.f49967b = i10;
            this.f49968c = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f49969a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f49970b;

        /* renamed from: c  reason: collision with root package name */
        public final List<a> f49971c;

        /* renamed from: d  reason: collision with root package name */
        public final byte[] f49972d;

        public b(int i10, @Nullable String str, @Nullable List<a> list, byte[] bArr) {
            List<a> unmodifiableList;
            this.f49969a = i10;
            this.f49970b = str;
            if (list == null) {
                unmodifiableList = Collections.emptyList();
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f49971c = unmodifiableList;
            this.f49972d = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes4.dex */
    public interface c {
        @Nullable
        i0 a(int i10, b bVar);

        SparseArray<i0> createInitialPayloadReaders();
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes4.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f49973a;

        /* renamed from: b  reason: collision with root package name */
        private final int f49974b;

        /* renamed from: c  reason: collision with root package name */
        private final int f49975c;

        /* renamed from: d  reason: collision with root package name */
        private int f49976d;

        /* renamed from: e  reason: collision with root package name */
        private String f49977e;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        private void d() {
            if (this.f49976d != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public void a() {
            int i10;
            int i11 = this.f49976d;
            if (i11 == Integer.MIN_VALUE) {
                i10 = this.f49974b;
            } else {
                i10 = i11 + this.f49975c;
            }
            this.f49976d = i10;
            this.f49977e = this.f49973a + this.f49976d;
        }

        public String b() {
            d();
            return this.f49977e;
        }

        public int c() {
            d();
            return this.f49976d;
        }

        public d(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + DomExceptionUtils.SEPARATOR;
            } else {
                str = "";
            }
            this.f49973a = str;
            this.f49974b = i11;
            this.f49975c = i12;
            this.f49976d = Integer.MIN_VALUE;
            this.f49977e = "";
        }
    }

    void a(o0 o0Var, t5.m mVar, d dVar);

    void b(b7.g0 g0Var, int i10) throws ParserException;

    void seek();
}
