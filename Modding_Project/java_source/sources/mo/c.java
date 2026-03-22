package mo;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* compiled from: EventMessageEncoder.java */
/* loaded from: classes8.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f62570a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f62571b;

    public c() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f62570a = byteArrayOutputStream;
        this.f62571b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(a aVar) {
        this.f62570a.reset();
        try {
            b(this.f62571b, aVar.f62564a);
            String str = aVar.f62565b;
            if (str == null) {
                str = "";
            }
            b(this.f62571b, str);
            this.f62571b.writeLong(aVar.f62566c);
            this.f62571b.writeLong(aVar.f62567d);
            this.f62571b.write(aVar.f62568e);
            this.f62571b.flush();
            return this.f62570a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
