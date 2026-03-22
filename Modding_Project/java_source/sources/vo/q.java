package vo;

import ao.i0;
import cn.b0;
import io.bidmachine.media3.common.ParserException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import qo.c;
import zm.t;
/* compiled from: SefReader.java */
/* loaded from: classes8.dex */
final class q {

    /* renamed from: d  reason: collision with root package name */
    private static final com.google.common.base.b f69314d = com.google.common.base.b.d(':');

    /* renamed from: e  reason: collision with root package name */
    private static final com.google.common.base.b f69315e = com.google.common.base.b.d('*');

    /* renamed from: a  reason: collision with root package name */
    private final List<a> f69316a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    private int f69317b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f69318c;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SefReader.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f69319a;

        /* renamed from: b  reason: collision with root package name */
        public final long f69320b;

        /* renamed from: c  reason: collision with root package name */
        public final int f69321c;

        public a(int i10, long j10, int i11) {
            this.f69319a = i10;
            this.f69320b = j10;
            this.f69321c = i11;
        }
    }

    private void a(ao.q qVar, i0 i0Var) throws IOException {
        b0 b0Var = new b0(8);
        qVar.readFully(b0Var.e(), 0, 8);
        this.f69318c = b0Var.u() + 8;
        if (b0Var.q() != 1397048916) {
            i0Var.f1855a = 0L;
            return;
        }
        i0Var.f1855a = qVar.getPosition() - (this.f69318c - 12);
        this.f69317b = 2;
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

    private void d(ao.q qVar, i0 i0Var) throws IOException {
        long length = qVar.getLength();
        int i10 = this.f69318c - 20;
        b0 b0Var = new b0(i10);
        qVar.readFully(b0Var.e(), 0, i10);
        for (int i11 = 0; i11 < i10 / 12; i11++) {
            b0Var.X(2);
            short w10 = b0Var.w();
            if (w10 != 2192 && w10 != 2816 && w10 != 2817 && w10 != 2819 && w10 != 2820) {
                b0Var.X(8);
            } else {
                this.f69316a.add(new a(w10, (length - this.f69318c) - b0Var.u(), b0Var.u()));
            }
        }
        if (this.f69316a.isEmpty()) {
            i0Var.f1855a = 0L;
            return;
        }
        this.f69317b = 3;
        i0Var.f1855a = this.f69316a.get(0).f69320b;
    }

    private void e(ao.q qVar, List<t.a> list) throws IOException {
        long position = qVar.getPosition();
        int length = (int) ((qVar.getLength() - qVar.getPosition()) - this.f69318c);
        b0 b0Var = new b0(length);
        qVar.readFully(b0Var.e(), 0, length);
        for (int i10 = 0; i10 < this.f69316a.size(); i10++) {
            a aVar = this.f69316a.get(i10);
            b0Var.W((int) (aVar.f69320b - position));
            b0Var.X(4);
            int u10 = b0Var.u();
            int b10 = b(b0Var.E(u10));
            int i11 = aVar.f69321c - (u10 + 8);
            if (b10 != 2192) {
                if (b10 != 2816 && b10 != 2817 && b10 != 2819 && b10 != 2820) {
                    throw new IllegalStateException();
                }
            } else {
                list.add(f(b0Var, i11));
            }
        }
    }

    private static qo.c f(b0 b0Var, int i10) throws ParserException {
        ArrayList arrayList = new ArrayList();
        List<String> f10 = f69315e.f(b0Var.E(i10));
        for (int i11 = 0; i11 < f10.size(); i11++) {
            List<String> f11 = f69314d.f(f10.get(i11));
            if (f11.size() == 3) {
                try {
                    arrayList.add(new c.a(Long.parseLong(f11.get(0)), Long.parseLong(f11.get(1)), 1 << (Integer.parseInt(f11.get(2)) - 1)));
                } catch (NumberFormatException e10) {
                    throw ParserException.b(null, e10);
                }
            } else {
                throw ParserException.b(null, null);
            }
        }
        return new qo.c(arrayList);
    }

    public int c(ao.q qVar, i0 i0Var, List<t.a> list) throws IOException {
        int i10 = this.f69317b;
        long j10 = 0;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 == 3) {
                        e(qVar, list);
                        i0Var.f1855a = 0L;
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    d(qVar, i0Var);
                }
            } else {
                a(qVar, i0Var);
            }
        } else {
            long length = qVar.getLength();
            if (length != -1 && length >= 8) {
                j10 = length - 8;
            }
            i0Var.f1855a = j10;
            this.f69317b = 1;
        }
        return 1;
    }

    public void g() {
        this.f69316a.clear();
        this.f69317b = 0;
    }
}
