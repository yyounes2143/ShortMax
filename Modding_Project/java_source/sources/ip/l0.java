package ip;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import io.bidmachine.media3.common.ParserException;
import java.util.Collections;
import java.util.List;
/* compiled from: TsPayloadReader.java */
/* loaded from: classes8.dex */
public interface l0 {

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f59828a;

        /* renamed from: b  reason: collision with root package name */
        public final int f59829b;

        /* renamed from: c  reason: collision with root package name */
        public final byte[] f59830c;

        public a(String str, int i10, byte[] bArr) {
            this.f59828a = str;
            this.f59829b = i10;
            this.f59830c = bArr;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f59831a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        public final String f59832b;

        /* renamed from: c  reason: collision with root package name */
        public final int f59833c;

        /* renamed from: d  reason: collision with root package name */
        public final List<a> f59834d;

        /* renamed from: e  reason: collision with root package name */
        public final byte[] f59835e;

        public b(int i10, @Nullable String str, int i11, @Nullable List<a> list, byte[] bArr) {
            List<a> unmodifiableList;
            this.f59831a = i10;
            this.f59832b = str;
            this.f59833c = i11;
            if (list == null) {
                unmodifiableList = Collections.emptyList();
            } else {
                unmodifiableList = Collections.unmodifiableList(list);
            }
            this.f59834d = unmodifiableList;
            this.f59835e = bArr;
        }

        public int a() {
            int i10 = this.f59833c;
            if (i10 != 2) {
                if (i10 != 3) {
                    return 0;
                }
                return 512;
            }
            return 2048;
        }
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes8.dex */
    public interface c {
        @Nullable
        l0 a(int i10, b bVar);

        SparseArray<l0> createInitialPayloadReaders();
    }

    /* compiled from: TsPayloadReader.java */
    /* loaded from: classes8.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private final String f59836a;

        /* renamed from: b  reason: collision with root package name */
        private final int f59837b;

        /* renamed from: c  reason: collision with root package name */
        private final int f59838c;

        /* renamed from: d  reason: collision with root package name */
        private int f59839d;

        /* renamed from: e  reason: collision with root package name */
        private String f59840e;

        public d(int i10, int i11) {
            this(Integer.MIN_VALUE, i10, i11);
        }

        private void d() {
            if (this.f59839d != Integer.MIN_VALUE) {
                return;
            }
            throw new IllegalStateException("generateNewId() must be called before retrieving ids.");
        }

        public void a() {
            int i10;
            int i11 = this.f59839d;
            if (i11 == Integer.MIN_VALUE) {
                i10 = this.f59837b;
            } else {
                i10 = i11 + this.f59838c;
            }
            this.f59839d = i10;
            this.f59840e = this.f59836a + this.f59839d;
        }

        public String b() {
            d();
            return this.f59840e;
        }

        public int c() {
            d();
            return this.f59839d;
        }

        public d(int i10, int i11, int i12) {
            String str;
            if (i10 != Integer.MIN_VALUE) {
                str = i10 + DomExceptionUtils.SEPARATOR;
            } else {
                str = "";
            }
            this.f59836a = str;
            this.f59837b = i11;
            this.f59838c = i12;
            this.f59839d = Integer.MIN_VALUE;
            this.f59840e = "";
        }
    }

    void a(cn.b0 b0Var, int i10) throws ParserException;

    void b(cn.h0 h0Var, ao.r rVar, d dVar);

    void seek();
}
