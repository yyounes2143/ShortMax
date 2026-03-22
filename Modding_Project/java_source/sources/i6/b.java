package i6;

import com.google.android.exoplayer2.metadata.emsg.EventMessage;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
/* compiled from: EventMessageEncoder.java */
/* loaded from: classes4.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final ByteArrayOutputStream f53317a;

    /* renamed from: b  reason: collision with root package name */
    private final DataOutputStream f53318b;

    public b() {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
        this.f53317a = byteArrayOutputStream;
        this.f53318b = new DataOutputStream(byteArrayOutputStream);
    }

    private static void b(DataOutputStream dataOutputStream, String str) throws IOException {
        dataOutputStream.writeBytes(str);
        dataOutputStream.writeByte(0);
    }

    public byte[] a(EventMessage eventMessage) {
        this.f53317a.reset();
        try {
            b(this.f53318b, eventMessage.f18007a);
            String str = eventMessage.f18008b;
            if (str == null) {
                str = "";
            }
            b(this.f53318b, str);
            this.f53318b.writeLong(eventMessage.f18009c);
            this.f53318b.writeLong(eventMessage.f18010d);
            this.f53318b.write(eventMessage.f18011e);
            this.f53318b.flush();
            return this.f53317a.toByteArray();
        } catch (IOException e10) {
            throw new RuntimeException(e10);
        }
    }
}
