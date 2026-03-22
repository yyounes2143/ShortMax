package b6;

import b7.g0;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.mp4.SlowMotionData;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import t5.y;
/* compiled from: SefReader.java */
/* loaded from: classes4.dex */
final class m {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.common.base.b f2383d = com.google.common.base.b.d(':');

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.common.base.b f2384e = com.google.common.base.b.d('*');

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f2385a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f2386b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f2387c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SefReader.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f2388a;

        /* renamed from: b  reason: collision with root package name */
        public final long f2389b;

        /* renamed from: c  reason: collision with root package name */
        public final int f2390c;

        public a(int i10, long j10, int i11) {
            this.f2388a = i10;
            this.f2389b = j10;
            this.f2390c = i11;
        }
    }

    private void a(t5.l lVar, y yVar) throws IOException {
        g0 g0Var = new g0(8);
        lVar.readFully(g0Var.d(), 0, 8);
        this.f2387c = g0Var.q() + 8;
        if (g0Var.n() != 1397048916) {
            yVar.f67204a = 0L;
            return;
        }
        yVar.f67204a = lVar.getPosition() - (this.f2387c - 12);
        this.f2386b = 2;
    }

    private static int b(String str) throws ParserException {
        str.hashCode();
        char c10 = 65535;
        switch (str.hashCode()) {
            case -1711564334:
                if (str.equals("SlowMotion_Data")) {
                    c10 = 0;
                    break;
                }
                break;
            case -1332107749:
                if (str.equals("Super_SlowMotion_Edit_Data")) {
                    c10 = 1;
                    break;
                }
                break;
            case -1251387154:
                if (str.equals("Super_SlowMotion_Data")) {
                    c10 = 2;
                    break;
                }
                break;
            case -830665521:
                if (str.equals("Super_SlowMotion_Deflickering_On")) {
                    c10 = 3;
                    break;
                }
                break;
            case 1760745220:
                if (str.equals("Super_SlowMotion_BGM")) {
                    c10 = 4;
                    break;
                }
                break;
        }
        switch (c10) {
            case 0:
                return 2192;
            case 1:
                return 2819;
            case 2:
                return 2816;
            case 3:
                return 2820;
            case 4:
                return 2817;
            default:
                throw ParserException.b("Invalid SEF name", null);
        }
    }

    private void d(t5.l lVar, y yVar) throws IOException {
        long length = lVar.getLength();
        int i10 = this.f2387c - 20;
        g0 g0Var = new g0(i10);
        lVar.readFully(g0Var.d(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            g0Var.Q(2);
            short s10 = g0Var.s();
            if (s10 != 2192 && s10 != 2816 && s10 != 2817 && s10 != 2819 && s10 != 2820) {
                g0Var.Q(8);
            } else {
                this.f2385a.add(new a(s10, (length - this.f2387c) - g0Var.q(), g0Var.q()));
            }
        }
        if (this.f2385a.isEmpty()) {
            yVar.f67204a = 0L;
            return;
        }
        this.f2386b = 3;
        yVar.f67204a = this.f2385a.get(0).f2389b;
    }

    private void e(t5.l lVar, List<Metadata.Entry> list) throws IOException {
        long position = lVar.getPosition();
        int length = (int) ((lVar.getLength() - lVar.getPosition()) - this.f2387c);
        g0 g0Var = new g0(length);
        lVar.readFully(g0Var.d(), 0, length);
        for (int i10 = 0; i10 < this.f2385a.size(); i10++) {
            a aVar = this.f2385a.get(i10);
            g0Var.P((int) (aVar.f2389b - position));
            g0Var.Q(4);
            int q10 = g0Var.q();
            int b10 = b(g0Var.A(q10));
            int i11 = aVar.f2390c - (q10 + 8);
            if (b10 != 2192) {
                if (b10 != 2816 && b10 != 2817 && b10 != 2819 && b10 != 2820) {
                    throw new IllegalStateException();
                }
            } else {
                list.add(f(g0Var, i11));
            }
        }
    }

    private static SlowMotionData f(g0 g0Var, int i10) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> f10 = f2384e.f(g0Var.A(i10));
        for (int i11 = 0; i11 < f10.size(); i11++) {
            List<String> f11 = f2383d.f(f10.get(i11));
            if (f11.size() == 3) {
                try {
                    arrayList.add(new SlowMotionData.Segment(Long.parseLong(f11.get(0)), Long.parseLong(f11.get(1)), 1 << (Integer.parseInt(f11.get(2)) - 1)));
                } catch (NumberFormatException e10) {
                    throw ParserException.b(null, e10);
                }
            } else {
                throw ParserException.b(null, null);
            }
        }
        return new SlowMotionData(arrayList);
    }

    public int c(t5.l lVar, y yVar, List<Metadata.Entry> list) throws IOException {
        int i10 = this.f2386b;
        long j10 = 0;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        e(lVar, list);
                        yVar.f67204a = 0L;
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    d(lVar, yVar);
                }
            } else {
                a(lVar, yVar);
            }
        } else {
            long length = lVar.getLength();
            if (length != -1 && length >= 8) {
                j10 = length - 8;
            }
            yVar.f67204a = j10;
            this.f2386b = 1;
        }
        return 1;
    }

    public void g() {
        this.f2385a.clear();
        this.f2386b = 0;
    }
}
