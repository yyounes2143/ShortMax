package com.amazonaws.util;

import com.amazonaws.internal.SdkFilterInputStream;
import com.huawei.hms.framework.common.ContainerUtils;
import java.io.BufferedInputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
class NamespaceRemovingInputStream extends SdkFilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f6412a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f6413b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class StringPrefixSlicer {

        /* renamed from: a  reason: collision with root package name */
        private String f6414a;

        public StringPrefixSlicer(String str) {
            this.f6414a = str;
        }

        public String a() {
            return this.f6414a;
        }

        public boolean b(String str) {
            if (!this.f6414a.startsWith(str)) {
                return false;
            }
            this.f6414a = this.f6414a.substring(str.length());
            return true;
        }

        public boolean c(String str) {
            int indexOf = this.f6414a.indexOf(str);
            if (indexOf < 0) {
                return false;
            }
            this.f6414a = this.f6414a.substring(indexOf + str.length());
            return true;
        }

        public boolean d(String str) {
            if (!this.f6414a.startsWith(str)) {
                return false;
            }
            while (this.f6414a.startsWith(str)) {
                this.f6414a = this.f6414a.substring(str.length());
            }
            return true;
        }
    }

    public NamespaceRemovingInputStream(InputStream inputStream) {
        super(new BufferedInputStream(inputStream));
        this.f6412a = new byte[200];
        this.f6413b = false;
    }

    private int m(String str) {
        StringPrefixSlicer stringPrefixSlicer = new StringPrefixSlicer(str);
        if (!stringPrefixSlicer.b("xmlns")) {
            return -1;
        }
        stringPrefixSlicer.d(" ");
        if (!stringPrefixSlicer.b(ContainerUtils.KEY_VALUE_DELIMITER)) {
            return -1;
        }
        stringPrefixSlicer.d(" ");
        if (!stringPrefixSlicer.b("\"") || !stringPrefixSlicer.c("\"")) {
            return -1;
        }
        return str.length() - stringPrefixSlicer.a().length();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        l();
        int read = ((FilterInputStream) this).in.read();
        if (read != 120 || this.f6413b) {
            return read;
        }
        this.f6412a[0] = (byte) read;
        ((FilterInputStream) this).in.mark(this.f6412a.length);
        InputStream inputStream = ((FilterInputStream) this).in;
        byte[] bArr = this.f6412a;
        int read2 = inputStream.read(bArr, 1, bArr.length - 1);
        ((FilterInputStream) this).in.reset();
        int m10 = m(new String(this.f6412a, 0, read2 + 1, StringUtils.f6417a));
        if (m10 > 0) {
            for (int i10 = 0; i10 < m10 - 1; i10++) {
                ((FilterInputStream) this).in.read();
            }
            int read3 = ((FilterInputStream) this).in.read();
            this.f6413b = true;
            return read3;
        }
        return read;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        for (int i12 = 0; i12 < i11; i12++) {
            int read = read();
            if (read == -1) {
                if (i12 == 0) {
                    return -1;
                }
                return i12;
            }
            bArr[i12 + i10] = (byte) read;
        }
        return i11;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }
}
