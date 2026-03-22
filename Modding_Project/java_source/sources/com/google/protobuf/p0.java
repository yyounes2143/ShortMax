package com.google.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextFormatEscaper.java */
/* loaded from: classes5.dex */
public final class p0 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextFormatEscaper.java */
    /* loaded from: classes5.dex */
    public class a implements c {
        final /* synthetic */ ByteString val$input;

        a(ByteString byteString) {
            this.val$input = byteString;
        }

        @Override // com.google.protobuf.p0.c
        public byte byteAt(int i10) {
            return this.val$input.byteAt(i10);
        }

        @Override // com.google.protobuf.p0.c
        public int size() {
            return this.val$input.size();
        }
    }

    /* compiled from: TextFormatEscaper.java */
    /* loaded from: classes5.dex */
    class b implements c {
        final /* synthetic */ byte[] val$input;

        b(byte[] bArr) {
            this.val$input = bArr;
        }

        @Override // com.google.protobuf.p0.c
        public byte byteAt(int i10) {
            return this.val$input[i10];
        }

        @Override // com.google.protobuf.p0.c
        public int size() {
            return this.val$input.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextFormatEscaper.java */
    /* loaded from: classes5.dex */
    public interface c {
        byte byteAt(int i10);

        int size();
    }

    private p0() {
    }

    static String escapeBytes(c cVar) {
        StringBuilder sb2 = new StringBuilder(cVar.size());
        for (int i10 = 0; i10 < cVar.size(); i10++) {
            byte byteAt = cVar.byteAt(i10);
            if (byteAt == 34) {
                sb2.append("\\\"");
            } else if (byteAt == 39) {
                sb2.append("\\'");
            } else if (byteAt != 92) {
                switch (byteAt) {
                    case 7:
                        sb2.append("\\a");
                        continue;
                    case 8:
                        sb2.append("\\b");
                        continue;
                    case 9:
                        sb2.append("\\t");
                        continue;
                    case 10:
                        sb2.append("\\n");
                        continue;
                    case 11:
                        sb2.append("\\v");
                        continue;
                    case 12:
                        sb2.append("\\f");
                        continue;
                    case 13:
                        sb2.append("\\r");
                        continue;
                    default:
                        if (byteAt >= 32 && byteAt <= 126) {
                            sb2.append((char) byteAt);
                            continue;
                        } else {
                            sb2.append('\\');
                            sb2.append((char) (((byteAt >>> 6) & 3) + 48));
                            sb2.append((char) (((byteAt >>> 3) & 7) + 48));
                            sb2.append((char) ((byteAt & 7) + 48));
                            break;
                        }
                        break;
                }
            } else {
                sb2.append("\\\\");
            }
        }
        return sb2.toString();
    }

    static String escapeDoubleQuotesAndBackslashes(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String escapeText(String str) {
        return escapeBytes(ByteString.copyFromUtf8(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String escapeBytes(ByteString byteString) {
        return escapeBytes(new a(byteString));
    }

    static String escapeBytes(byte[] bArr) {
        return escapeBytes(new b(bArr));
    }
}
