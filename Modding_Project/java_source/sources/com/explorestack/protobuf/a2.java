package com.explorestack.protobuf;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: TextFormatEscaper.java */
/* loaded from: classes3.dex */
public final class a2 {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TextFormatEscaper.java */
    /* loaded from: classes3.dex */
    public static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ ByteString f14216a;

        a(ByteString byteString) {
            this.f14216a = byteString;
        }

        @Override // com.explorestack.protobuf.a2.c
        public byte byteAt(int i10) {
            return this.f14216a.byteAt(i10);
        }

        @Override // com.explorestack.protobuf.a2.c
        public int size() {
            return this.f14216a.size();
        }
    }

    /* compiled from: TextFormatEscaper.java */
    /* loaded from: classes3.dex */
    static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ byte[] f14217a;

        b(byte[] bArr) {
            this.f14217a = bArr;
        }

        @Override // com.explorestack.protobuf.a2.c
        public byte byteAt(int i10) {
            return this.f14217a[i10];
        }

        @Override // com.explorestack.protobuf.a2.c
        public int size() {
            return this.f14217a.length;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextFormatEscaper.java */
    /* loaded from: classes3.dex */
    public interface c {
        byte byteAt(int i10);

        int size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(ByteString byteString) {
        return b(new a(byteString));
    }

    static String b(c cVar) {
        StringBuilder sb2 = new StringBuilder(cVar.size());
        for (int i10 = 0; i10 < cVar.size(); i10++) {
            byte byteAt = cVar.byteAt(i10);
            if (byteAt != 34) {
                if (byteAt != 39) {
                    if (byteAt != 92) {
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
                } else {
                    sb2.append("\\'");
                }
            } else {
                sb2.append("\\\"");
            }
        }
        return sb2.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(byte[] bArr) {
        return b(new b(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String d(String str) {
        return str.replace("\\", "\\\\").replace("\"", "\\\"");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String e(String str) {
        return a(ByteString.copyFromUtf8(str));
    }
}
