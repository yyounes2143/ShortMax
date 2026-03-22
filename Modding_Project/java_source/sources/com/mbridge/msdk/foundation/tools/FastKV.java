package com.mbridge.msdk.foundation.tools;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.inmobi.commons.core.configs.AdConfig;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import kotlin.jvm.internal.ByteCompanionObject;
/* loaded from: classes5.dex */
public class FastKV {
    static final int ASYNC_BLOCKING = 1;
    private static final String A_SUFFIX = ".kva";
    private static final int BASE_GC_BYTES_THRESHOLD = 4096;
    private static final int BASE_GC_KEYS_THRESHOLD = 80;
    private static final String BOTH_FILES_ERROR = "both files error";
    private static final String B_SUFFIX = ".kvb";
    private static final String C_SUFFIX = ".kvc";
    private static final int DATA_SIZE_LIMIT = 536870912;
    private static final int DATA_START = 12;
    private static final int DOUBLE_LIMIT;
    private static final byte[] EMPTY_ARRAY = new byte[0];
    static final String GC_FINISH = "gc finish";
    private static final int INTERNAL_LIMIT = 2048;
    private static final String MAP_FAILED = "map failed";
    static final int NON_BLOCKING = 0;
    private static final String OPEN_FILE_FAILED = "open file failed";
    private static final int PAGE_SIZE;
    private static final String PARSE_DATA_FAILED = "parse dara failed";
    static final int SYNC_BLOCKING = 2;
    private static final String TEMP_SUFFIX = ".tmp";
    static final String TRUNCATE_FINISH = "truncate finish";
    private static final int TRUNCATE_THRESHOLD;
    private static final int[] TYPE_SIZE;
    private MappedByteBuffer aBuffer;
    private FileChannel aChannel;
    private MappedByteBuffer bBuffer;
    private FileChannel bChannel;
    private long checksum;
    private int dataEnd;
    private final Map<String, b> encoderMap;
    private a0 fastBuffer;
    private int invalidBytes;
    private final String name;
    private final String path;
    private int removeStart;
    private boolean sizeChanged;
    private String tempExternalName;
    private int updateSize;
    private int updateStart;
    private int writingMode;
    private final Map<String, i> data = new HashMap();
    private final Executor executor = new d0();
    private final ArrayList<d> invalids = new ArrayList<>();
    private final c logger = b0.f27388b;
    private boolean autoCommit = true;

    /* loaded from: classes5.dex */
    public static class Builder {
        private static final Map<String, FastKV> INSTANCE_MAP = new ConcurrentHashMap();
        private b[] encoders;
        private final String name;
        private final String path;
        private int writingMode = 0;

        public Builder(String str, String str2) {
            if (str != null && !str.isEmpty()) {
                if (str2 != null && !str2.isEmpty()) {
                    if (!str.endsWith(DomExceptionUtils.SEPARATOR)) {
                        str = str + '/';
                    }
                    this.path = str;
                    this.name = str2;
                    return;
                }
                throw new IllegalArgumentException("name is empty");
            }
            throw new IllegalArgumentException("path is empty");
        }

        public Builder asyncBlocking() {
            this.writingMode = 1;
            return this;
        }

        public Builder blocking() {
            this.writingMode = 2;
            return this;
        }

        public FastKV build() {
            String str = this.path + this.name;
            Map<String, FastKV> map = INSTANCE_MAP;
            FastKV fastKV = map.get(str);
            if (fastKV == null) {
                synchronized (Builder.class) {
                    try {
                        fastKV = map.get(str);
                        if (fastKV == null) {
                            fastKV = new FastKV(this.path, this.name, this.encoders, this.writingMode);
                            map.put(str, fastKV);
                        }
                    } finally {
                    }
                }
            }
            return fastKV;
        }

        public Builder encoder(b[] bVarArr) {
            this.encoders = bVarArr;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes5.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            FastKV.this.writeToCFile();
        }
    }

    /* loaded from: classes5.dex */
    public interface b<T> {
        T a(byte[] bArr, int i10, int i11);

        String a();

        byte[] a(T t10);
    }

    /* loaded from: classes5.dex */
    public interface c {
        void a(String str, Exception exc);

        void a(String str, String str2);

        void b(String str, Exception exc);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public static class d implements Comparable<d> {

        /* renamed from: a  reason: collision with root package name */
        int f27342a;

        /* renamed from: b  reason: collision with root package name */
        int f27343b;

        d(int i10, int i11) {
            this.f27343b = i10;
            this.f27342a = i11;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(d dVar) {
            return this.f27343b - dVar.f27343b;
        }
    }

    static {
        int a10 = c1.a();
        PAGE_SIZE = a10;
        int max = Math.max(a10 << 1, 16384);
        DOUBLE_LIMIT = max;
        TRUNCATE_THRESHOLD = max << 1;
        TYPE_SIZE = new int[]{0, 1, 4, 4, 8, 8};
    }

    FastKV(String str, String str2, b[] bVarArr, int i10) {
        this.path = str;
        this.name = str2;
        this.writingMode = i10;
        HashMap hashMap = new HashMap();
        y0 y0Var = y0.f27531a;
        hashMap.put(y0Var.a(), y0Var);
        if (bVarArr != null && bVarArr.length > 0) {
            for (b bVar : bVarArr) {
                String a10 = bVar.a();
                if (hashMap.containsKey(a10)) {
                    error("duplicate encoder tag:" + a10);
                } else {
                    hashMap.put(a10, bVar);
                }
            }
        }
        this.encoderMap = hashMap;
        loadData();
    }

    private void addObject(String str, Object obj, byte[] bArr, byte b10) {
        boolean z10;
        String str2;
        int length;
        i oVar;
        int saveArray = saveArray(str, bArr, b10);
        if (saveArray != 0) {
            String str3 = this.tempExternalName;
            if (str3 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            boolean z11 = z10;
            if (z11) {
                this.tempExternalName = null;
                length = 32;
                str2 = str3;
            } else {
                str2 = obj;
                length = bArr.length;
            }
            if (b10 == 6) {
                oVar = new p(this.updateStart, saveArray, (String) str2, length, z11);
            } else if (b10 == 7) {
                oVar = new h(this.updateStart, saveArray, str2, length, z11);
            } else {
                oVar = new o(this.updateStart, saveArray, str2, length, z11);
            }
            this.data.put(str, oVar);
            updateChange();
        }
    }

    private void addOrUpdate(String str, Object obj, byte[] bArr, q qVar, byte b10) {
        if (qVar == null) {
            addObject(str, obj, bArr, b10);
        } else if (!qVar.f27482b && qVar.f27485e == bArr.length) {
            updateBytes(qVar.f27439a, bArr);
            qVar.f27484d = obj;
        } else {
            updateObject(str, obj, bArr, qVar);
        }
        checkIfCommit();
    }

    private int bytesThreshold() {
        int i10 = this.dataEnd;
        if (i10 <= 16384) {
            return 4096;
        }
        if (i10 > 65536) {
            return 16384;
        }
        return 8192;
    }

    private void checkGC() {
        int i10;
        if (this.invalidBytes < (bytesThreshold() << 1)) {
            int size = this.invalids.size();
            if (this.dataEnd < 16384) {
                i10 = 80;
            } else {
                i10 = 160;
            }
            if (size < i10) {
                return;
            }
        }
        gc(0);
    }

    private void checkIfCommit() {
        if (this.writingMode != 0 && this.autoCommit) {
            commitToCFile();
        }
    }

    private void checkKey(String str) {
        if (str != null && !str.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException("key is empty");
    }

    private void checkKeySize(int i10) {
        if (i10 <= 255) {
            return;
        }
        throw new IllegalArgumentException("key's length must less than 256");
    }

    private void checkValueSize(int i10, boolean z10) {
        if (z10) {
            if (i10 != 32) {
                throw new IllegalStateException("name size not match");
            }
        } else if (i10 >= 0 && i10 < 2048) {
        } else {
            throw new IllegalStateException("value size out of bound");
        }
    }

    private void clearData() {
        this.dataEnd = 12;
        this.checksum = 0L;
        clearInvalid();
        this.data.clear();
        a0 a0Var = this.fastBuffer;
        if (a0Var != null && a0Var.f27372a.length == PAGE_SIZE) {
            a0Var.b(0, 0);
            this.fastBuffer.a(4, 0L);
            return;
        }
        this.fastBuffer = new a0(PAGE_SIZE);
    }

    private void clearInvalid() {
        this.invalidBytes = 0;
        this.invalids.clear();
    }

    private boolean commitToCFile() {
        int i10 = this.writingMode;
        if (i10 == 1) {
            this.executor.execute(new a());
        } else if (i10 == 2) {
            return writeToCFile();
        }
        return true;
    }

    private void copyBuffer(MappedByteBuffer mappedByteBuffer, MappedByteBuffer mappedByteBuffer2, int i10) {
        FileChannel fileChannel;
        if (mappedByteBuffer.capacity() != mappedByteBuffer2.capacity()) {
            try {
                if (mappedByteBuffer2 == this.bBuffer) {
                    fileChannel = this.bChannel;
                } else {
                    fileChannel = this.aChannel;
                }
                MappedByteBuffer map = fileChannel.map(FileChannel.MapMode.READ_WRITE, 0L, mappedByteBuffer.capacity());
                map.order(ByteOrder.LITTLE_ENDIAN);
                if (mappedByteBuffer2 == this.bBuffer) {
                    this.bBuffer = map;
                } else {
                    this.aBuffer = map;
                }
                mappedByteBuffer2 = map;
            } catch (IOException e10) {
                error(e10);
                toBlockingMode();
                return;
            }
        }
        mappedByteBuffer.rewind();
        mappedByteBuffer2.rewind();
        mappedByteBuffer.limit(i10);
        mappedByteBuffer2.put(mappedByteBuffer);
        mappedByteBuffer.limit(mappedByteBuffer.capacity());
    }

    private void countInvalid(int i10, int i11) {
        this.invalidBytes += i11 - i10;
        this.invalids.add(new d(i10, i11));
    }

    private void deleteCFiles() {
        try {
            String str = this.path;
            c1.a(new File(str, this.name + C_SUFFIX));
            String str2 = this.path;
            c1.a(new File(str2, this.name + TEMP_SUFFIX));
        } catch (Exception e10) {
            error(e10);
        }
    }

    private void ensureSize(int i10) {
        int length = this.fastBuffer.f27372a.length;
        int i11 = this.dataEnd + i10;
        if (i11 >= length) {
            int i12 = this.invalidBytes;
            if (i12 > i10 && i12 > bytesThreshold()) {
                gc(i10);
                return;
            }
            int newCapacity = getNewCapacity(length, i11);
            byte[] bArr = new byte[newCapacity];
            System.arraycopy(this.fastBuffer.f27372a, 0, bArr, 0, this.dataEnd);
            this.fastBuffer.f27372a = bArr;
            if (this.writingMode == 0) {
                try {
                    FileChannel fileChannel = this.aChannel;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    long j10 = newCapacity;
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
                    this.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j10);
                    this.bBuffer = map2;
                    map2.order(byteOrder);
                } catch (IOException e10) {
                    error(new Exception(MAP_FAILED, e10));
                    this.fastBuffer.b(0, this.dataEnd - 12);
                    this.fastBuffer.a(4, this.checksum);
                    toBlockingMode();
                }
            }
        }
    }

    private void error(Exception exc) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.b(this.name, exc);
        }
    }

    private void fastPutString(String str, String str2, p pVar) {
        int b10 = a0.b(str2);
        if (pVar == null) {
            int b11 = a0.b(str);
            checkKeySize(b11);
            int i10 = b11 + 4;
            this.updateSize = i10 + b10;
            preparePutBytes();
            this.fastBuffer.a((byte) 6);
            putKey(str, b11);
            putStringValue(str2, b10);
            Map<String, i> map = this.data;
            int i11 = this.updateStart;
            map.put(str, new p(i11, i11 + i10, str2, b10, false));
            updateChange();
        } else {
            int i12 = pVar.f27439a;
            int i13 = i12 - pVar.f27483c;
            int i14 = pVar.f27485e;
            boolean z10 = false;
            String str3 = null;
            if (i14 == b10) {
                this.checksum ^= this.fastBuffer.a(i12, i14);
                if (b10 == str2.length()) {
                    str2.getBytes(0, b10, this.fastBuffer.f27372a, pVar.f27439a);
                } else {
                    a0 a0Var = this.fastBuffer;
                    a0Var.f27373b = pVar.f27439a;
                    a0Var.c(str2);
                }
                this.updateStart = pVar.f27439a;
                this.updateSize = b10;
            } else {
                this.updateSize = i13 + b10;
                preparePutBytes();
                this.fastBuffer.a((byte) 6);
                int i15 = i13 - 3;
                a0 a0Var2 = this.fastBuffer;
                byte[] bArr = a0Var2.f27372a;
                System.arraycopy(bArr, pVar.f27483c + 1, bArr, a0Var2.f27373b, i15);
                this.fastBuffer.f27373b += i15;
                putStringValue(str2, b10);
                remove((byte) 6, pVar.f27483c, pVar.f27439a + pVar.f27485e);
                if (pVar.f27482b) {
                    str3 = (String) pVar.f27484d;
                }
                pVar.f27482b = false;
                int i16 = this.updateStart;
                pVar.f27483c = i16;
                pVar.f27439a = i16 + i13;
                pVar.f27485e = b10;
                z10 = true;
            }
            pVar.f27484d = str2;
            updateChange();
            if (z10) {
                checkGC();
            }
            if (str3 != null) {
                c1.a(new File(this.path + this.name, str3));
            }
        }
        checkIfCommit();
    }

    private byte[] getArrayFromFile(h hVar) {
        try {
            byte[] c10 = c1.c(new File(this.path + this.name, (String) hVar.f27484d));
            if (c10 == null) {
                return EMPTY_ARRAY;
            }
            return c10;
        } catch (Exception e10) {
            error(e10);
            return EMPTY_ARRAY;
        }
    }

    private int getNewCapacity(int i10, int i11) {
        if (i11 <= 536870912) {
            int i12 = PAGE_SIZE;
            if (i11 <= i12) {
                return i12;
            }
            while (i10 < i11) {
                int i13 = DOUBLE_LIMIT;
                if (i10 <= i13) {
                    i10 <<= 1;
                } else {
                    i10 += i13;
                }
            }
            return i10;
        }
        throw new IllegalStateException("data size out of limit");
    }

    private Object getObjectFromFile(o oVar) {
        try {
            byte[] c10 = c1.c(new File(this.path + this.name, (String) oVar.f27484d));
            if (c10 != null) {
                int i10 = c10[0] & AdConfig.NETWORK_LOAD_LIMIT_DISABLED;
                String str = new String(c10, 1, i10, StandardCharsets.UTF_8);
                b bVar = this.encoderMap.get(str);
                if (bVar != null) {
                    int i11 = i10 + 1;
                    return bVar.a(c10, i11, c10.length - i11);
                }
                warning(new Exception("No encoder for tag:" + str));
                return null;
            }
            warning(new Exception("Read object data failed"));
            return null;
        } catch (Exception e10) {
            error(e10);
            return null;
        }
    }

    private String getStringFromFile(p pVar) {
        try {
            byte[] c10 = c1.c(new File(this.path + this.name, (String) pVar.f27484d));
            if (c10 != null && c10.length != 0) {
                return new String(c10, StandardCharsets.UTF_8);
            }
            return "";
        } catch (Exception e10) {
            error(e10);
        }
        return "";
    }

    private void info(String str) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.a(this.name, str);
        }
    }

    private boolean isABFileEqual() {
        a0 a0Var = new a0(this.dataEnd);
        this.bBuffer.rewind();
        this.bBuffer.get(a0Var.f27372a, 0, this.dataEnd);
        byte[] bArr = this.fastBuffer.f27372a;
        byte[] bArr2 = a0Var.f27372a;
        for (int i10 = 0; i10 < this.dataEnd; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private synchronized void loadData() {
        try {
            long nanoTime = System.nanoTime();
            if (!loadFromCFile() && this.writingMode == 0) {
                loadFromABFile();
            }
            if (this.fastBuffer == null) {
                this.fastBuffer = new a0(PAGE_SIZE);
            }
            if (this.logger != null) {
                info("loading finish, data len:" + this.dataEnd + ", get keys:" + this.data.size() + ", use time:" + ((System.nanoTime() - nanoTime) / 1000000) + " ms");
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void loadFromABFile() {
        long j10;
        long j11;
        FastKV fastKV = this;
        File file = new File(fastKV.path, fastKV.name + A_SUFFIX);
        File file2 = new File(fastKV.path, fastKV.name + B_SUFFIX);
        try {
            if (c1.d(file) && c1.d(file2)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                long length = randomAccessFile.length();
                long length2 = randomAccessFile2.length();
                fastKV.aChannel = randomAccessFile.getChannel();
                fastKV.bChannel = randomAccessFile2.getChannel();
                try {
                    FileChannel fileChannel = fastKV.aChannel;
                    FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                    int i10 = (length > 0L ? 1 : (length == 0L ? 0 : -1));
                    if (i10 > 0) {
                        j10 = length;
                    } else {
                        j10 = PAGE_SIZE;
                    }
                    MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
                    fastKV.aBuffer = map;
                    ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                    map.order(byteOrder);
                    FileChannel fileChannel2 = fastKV.bChannel;
                    int i11 = (length2 > 0L ? 1 : (length2 == 0L ? 0 : -1));
                    if (i11 > 0) {
                        j11 = length2;
                    } else {
                        j11 = PAGE_SIZE;
                    }
                    MappedByteBuffer map2 = fileChannel2.map(mapMode, 0L, j11);
                    fastKV.bBuffer = map2;
                    map2.order(byteOrder);
                    fastKV.fastBuffer = new a0(fastKV.aBuffer.capacity());
                    if (i10 == 0 && i11 == 0) {
                        fastKV.dataEnd = 12;
                        return;
                    }
                    int i12 = fastKV.aBuffer.getInt();
                    long j12 = fastKV.aBuffer.getLong();
                    int i13 = fastKV.bBuffer.getInt();
                    long j13 = fastKV.bBuffer.getLong();
                    if (i12 >= 0) {
                        if (i12 <= length - 12) {
                            fastKV = this;
                            fastKV.dataEnd = i12 + 12;
                            fastKV.aBuffer.rewind();
                            fastKV.aBuffer.get(fastKV.fastBuffer.f27372a, 0, fastKV.dataEnd);
                            if (j12 == fastKV.fastBuffer.a(12, i12) && parseData() == 0) {
                                fastKV.checksum = j12;
                                if (length != length2 || !isABFileEqual()) {
                                    fastKV.warning(new Exception("B file error"));
                                    fastKV.copyBuffer(fastKV.aBuffer, fastKV.bBuffer, fastKV.dataEnd);
                                    return;
                                }
                                return;
                            }
                        } else {
                            fastKV = this;
                        }
                    }
                    if (i13 >= 0 && i13 <= length2 - 12) {
                        fastKV.data.clear();
                        clearInvalid();
                        fastKV.dataEnd = i13 + 12;
                        if (fastKV.fastBuffer.f27372a.length != fastKV.bBuffer.capacity()) {
                            fastKV.fastBuffer = new a0(fastKV.bBuffer.capacity());
                        }
                        fastKV.bBuffer.rewind();
                        fastKV.bBuffer.get(fastKV.fastBuffer.f27372a, 0, fastKV.dataEnd);
                        if (j13 == fastKV.fastBuffer.a(12, i13) && parseData() == 0) {
                            fastKV.warning(new Exception("A file error"));
                            fastKV.copyBuffer(fastKV.bBuffer, fastKV.aBuffer, fastKV.dataEnd);
                            fastKV.checksum = j13;
                            return;
                        }
                    }
                    fastKV.error(BOTH_FILES_ERROR);
                    resetData();
                    return;
                } catch (IOException e10) {
                    fastKV.error(e10);
                    toBlockingMode();
                    fastKV.tryBlockingIO(file, file2);
                    return;
                }
            }
            fastKV.error(new Exception(OPEN_FILE_FAILED));
            toBlockingMode();
        } catch (Exception e11) {
            fastKV.error(e11);
            clearData();
            toBlockingMode();
        }
    }

    private boolean loadFromCFile() {
        File file = new File(this.path, this.name + C_SUFFIX);
        File file2 = new File(this.path, this.name + TEMP_SUFFIX);
        boolean z10 = false;
        try {
            if (!file.exists()) {
                if (file2.exists()) {
                    file = file2;
                } else {
                    file = null;
                }
            }
            if (file != null) {
                if (loadWithBlockingIO(file)) {
                    if (this.writingMode != 0) {
                        return false;
                    }
                    if (writeToABFile(this.fastBuffer)) {
                        info("recover from c file");
                        try {
                            deleteCFiles();
                            return true;
                        } catch (Exception e10) {
                            e = e10;
                            z10 = true;
                            error(e);
                            return z10;
                        }
                    }
                    this.writingMode = 1;
                    return false;
                }
                clearData();
                deleteCFiles();
                return false;
            } else if (this.writingMode == 0) {
                return false;
            } else {
                File file3 = new File(this.path, this.name + A_SUFFIX);
                File file4 = new File(this.path, this.name + B_SUFFIX);
                if (!file3.exists() || !file4.exists()) {
                    return false;
                }
                tryBlockingIO(file3, file4);
                return false;
            }
        } catch (Exception e11) {
            e = e11;
        }
    }

    private boolean loadWithBlockingIO(File file) throws IOException {
        long length = file.length();
        if (length != 0 && length <= 536870912) {
            int i10 = (int) length;
            int newCapacity = getNewCapacity(PAGE_SIZE, i10);
            a0 a0Var = this.fastBuffer;
            if (a0Var != null && a0Var.f27372a.length == newCapacity) {
                a0Var.f27373b = 0;
            } else {
                a0Var = new a0(new byte[newCapacity]);
                this.fastBuffer = a0Var;
            }
            c1.a(file, a0Var.f27372a, i10);
            int d10 = a0Var.d();
            long e10 = a0Var.e();
            this.dataEnd = d10 + 12;
            if (d10 >= 0 && d10 <= i10 - 12 && e10 == a0Var.a(12, d10) && parseData() == 0) {
                this.checksum = e10;
                return true;
            }
        }
        return false;
    }

    private void mergeInvalids() {
        int size = this.invalids.size() - 1;
        d dVar = this.invalids.get(size);
        while (size > 0) {
            int i10 = size - 1;
            d dVar2 = this.invalids.get(i10);
            if (dVar.f27343b == dVar2.f27342a) {
                dVar2.f27342a = dVar.f27342a;
                this.invalids.remove(size);
            }
            dVar = dVar2;
            size = i10;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x016d, code lost:
        throw new java.lang.Exception(com.mbridge.msdk.foundation.tools.FastKV.PARSE_DATA_FAILED);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int parseData() {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.tools.FastKV.parseData():int");
    }

    private void preparePutBytes() {
        ensureSize(this.updateSize);
        int i10 = this.dataEnd;
        this.updateStart = i10;
        this.dataEnd = this.updateSize + i10;
        this.fastBuffer.f27373b = i10;
        this.sizeChanged = true;
    }

    private void putKey(String str, int i10) {
        this.fastBuffer.a((byte) i10);
        if (i10 == str.length()) {
            a0 a0Var = this.fastBuffer;
            str.getBytes(0, i10, a0Var.f27372a, a0Var.f27373b);
            this.fastBuffer.f27373b += i10;
            return;
        }
        this.fastBuffer.c(str);
    }

    private void putStringValue(String str, int i10) {
        this.fastBuffer.a((short) i10);
        if (i10 == str.length()) {
            a0 a0Var = this.fastBuffer;
            str.getBytes(0, i10, a0Var.f27372a, a0Var.f27373b);
            return;
        }
        this.fastBuffer.c(str);
    }

    private void resetBuffer(MappedByteBuffer mappedByteBuffer) throws IOException {
        FileChannel fileChannel;
        int capacity = mappedByteBuffer.capacity();
        int i10 = PAGE_SIZE;
        if (capacity != i10) {
            if (mappedByteBuffer == this.aBuffer) {
                fileChannel = this.aChannel;
            } else {
                fileChannel = this.bChannel;
            }
            FileChannel fileChannel2 = fileChannel;
            long j10 = i10;
            fileChannel2.truncate(j10);
            MappedByteBuffer map = fileChannel2.map(FileChannel.MapMode.READ_WRITE, 0L, j10);
            map.order(ByteOrder.LITTLE_ENDIAN);
            if (mappedByteBuffer == this.aBuffer) {
                this.aBuffer = map;
            } else {
                this.bBuffer = map;
            }
            mappedByteBuffer = map;
        }
        mappedByteBuffer.putInt(0, 0);
        mappedByteBuffer.putLong(4, 0L);
    }

    private void resetData() {
        if (this.writingMode == 0) {
            try {
                resetBuffer(this.aBuffer);
                resetBuffer(this.bBuffer);
            } catch (IOException unused) {
                toBlockingMode();
            }
        }
        clearData();
        c1.a(new File(this.path + this.name));
    }

    private int saveArray(String str, byte[] bArr, byte b10) {
        this.tempExternalName = null;
        if (bArr.length < 2048) {
            return wrapArray(str, bArr, b10);
        }
        info("large value, key: " + str + ", size: " + bArr.length);
        String b11 = c1.b();
        if (c1.a(new File(this.path + this.name, b11), bArr)) {
            this.tempExternalName = b11;
            byte[] bArr2 = new byte[32];
            b11.getBytes(0, 32, bArr2, 0);
            return wrapArray(str, bArr2, (byte) (b10 | 64));
        }
        error("save large value failed");
        return 0;
    }

    private long shiftCheckSum(long j10, int i10) {
        int i11 = (i10 & 7) << 3;
        return (j10 >>> (64 - i11)) | (j10 << i11);
    }

    private void syncABBuffer(MappedByteBuffer mappedByteBuffer) {
        if (this.sizeChanged && mappedByteBuffer != this.aBuffer) {
            mappedByteBuffer.putInt(0, this.dataEnd - 12);
        }
        mappedByteBuffer.putLong(4, this.checksum);
        int i10 = this.removeStart;
        if (i10 != 0) {
            mappedByteBuffer.put(i10, this.fastBuffer.f27372a[i10]);
        }
        if (this.updateSize != 0) {
            mappedByteBuffer.position(this.updateStart);
            mappedByteBuffer.put(this.fastBuffer.f27372a, this.updateStart, this.updateSize);
        }
    }

    private void toBlockingMode() {
        this.writingMode = 1;
        c1.a(this.aChannel);
        c1.a(this.bChannel);
        this.aChannel = null;
        this.bChannel = null;
        this.aBuffer = null;
        this.bBuffer = null;
    }

    private void truncate(int i10) {
        int i11 = PAGE_SIZE;
        int newCapacity = getNewCapacity(i11, i10 + i11);
        byte[] bArr = this.fastBuffer.f27372a;
        if (newCapacity >= bArr.length) {
            return;
        }
        byte[] bArr2 = new byte[newCapacity];
        System.arraycopy(bArr, 0, bArr2, 0, this.dataEnd);
        this.fastBuffer.f27372a = bArr2;
        if (this.writingMode == 0) {
            try {
                long j10 = newCapacity;
                this.aChannel.truncate(j10);
                FileChannel fileChannel = this.aChannel;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
                this.aBuffer = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                this.bChannel.truncate(j10);
                MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j10);
                this.bBuffer = map2;
                map2.order(byteOrder);
            } catch (IOException e10) {
                error(new Exception(MAP_FAILED, e10));
                toBlockingMode();
            }
        }
        info(TRUNCATE_FINISH);
    }

    private void tryBlockingIO(File file, File file2) {
        try {
            if (loadWithBlockingIO(file)) {
                return;
            }
        } catch (IOException e10) {
            warning(e10);
        }
        clearData();
        try {
            if (loadWithBlockingIO(file2)) {
                return;
            }
        } catch (IOException e11) {
            warning(e11);
        }
        clearData();
    }

    private void updateBoolean(byte b10, int i10) {
        long shiftCheckSum = this.checksum ^ shiftCheckSum(1L, i10);
        this.checksum = shiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, shiftCheckSum);
            this.aBuffer.put(i10, b10);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.put(i10, b10);
        } else {
            this.fastBuffer.a(4, shiftCheckSum);
        }
        this.fastBuffer.f27372a[i10] = b10;
    }

    private void updateBytes(int i10, byte[] bArr) {
        int length = bArr.length;
        this.checksum ^= this.fastBuffer.a(i10, length);
        a0 a0Var = this.fastBuffer;
        a0Var.f27373b = i10;
        a0Var.a(bArr);
        long a10 = this.checksum ^ this.fastBuffer.a(i10, length);
        this.checksum = a10;
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            this.aBuffer.putLong(4, this.checksum);
            this.aBuffer.position(i10);
            this.aBuffer.put(bArr);
            this.aBuffer.putInt(0, this.dataEnd - 12);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.position(i10);
            this.bBuffer.put(bArr);
            return;
        }
        this.fastBuffer.a(4, a10);
    }

    private void updateChange() {
        this.checksum ^= this.fastBuffer.a(this.updateStart, this.updateSize);
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            syncABBuffer(this.aBuffer);
            this.aBuffer.putInt(0, this.dataEnd - 12);
            syncABBuffer(this.bBuffer);
        } else {
            if (this.sizeChanged) {
                this.fastBuffer.b(0, this.dataEnd - 12);
            }
            this.fastBuffer.a(4, this.checksum);
        }
        this.sizeChanged = false;
        this.removeStart = 0;
        this.updateSize = 0;
    }

    private void updateInt32(int i10, long j10, int i11) {
        long shiftCheckSum = shiftCheckSum(j10, i11) ^ this.checksum;
        this.checksum = shiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, shiftCheckSum);
            this.aBuffer.putInt(i11, i10);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putInt(i11, i10);
        } else {
            this.fastBuffer.a(4, shiftCheckSum);
        }
        this.fastBuffer.b(i11, i10);
    }

    private void updateInt64(long j10, long j11, int i10) {
        long shiftCheckSum = shiftCheckSum(j11, i10) ^ this.checksum;
        this.checksum = shiftCheckSum;
        if (this.writingMode == 0) {
            this.aBuffer.putLong(4, shiftCheckSum);
            this.aBuffer.putLong(i10, j10);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.putLong(i10, j10);
        } else {
            this.fastBuffer.a(4, shiftCheckSum);
        }
        this.fastBuffer.a(i10, j10);
    }

    private void updateObject(String str, Object obj, byte[] bArr, q qVar) {
        String str2;
        boolean z10;
        int saveArray = saveArray(str, bArr, qVar.a());
        if (saveArray != 0) {
            if (qVar.f27482b) {
                str2 = (String) qVar.f27484d;
            } else {
                str2 = null;
            }
            remove(qVar.a(), qVar.f27483c, qVar.f27439a + qVar.f27485e);
            String str3 = this.tempExternalName;
            if (str3 != null) {
                z10 = true;
            } else {
                z10 = false;
            }
            qVar.f27483c = this.updateStart;
            qVar.f27439a = saveArray;
            qVar.f27482b = z10;
            if (z10) {
                qVar.f27484d = str3;
                qVar.f27485e = 32;
                this.tempExternalName = null;
            } else {
                qVar.f27484d = obj;
                qVar.f27485e = bArr.length;
            }
            updateChange();
            checkGC();
            if (str2 != null) {
                c1.a(new File(this.path + this.name, str2));
            }
        }
    }

    private void updateOffset(int i10, int[] iArr) {
        for (i iVar : this.data.values()) {
            int i11 = iVar.f27439a;
            if (i11 > i10) {
                int i12 = iArr[(c1.a(iArr, i11) << 1) + 1];
                iVar.f27439a -= i12;
                if (iVar.a() >= 6) {
                    ((q) iVar).f27483c -= i12;
                }
            }
        }
    }

    private void warning(Exception exc) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.a(this.name, exc);
        }
    }

    private int wrapArray(String str, byte[] bArr, byte b10) {
        wrapHeader(str, b10, bArr.length + 2);
        this.fastBuffer.a((short) bArr.length);
        a0 a0Var = this.fastBuffer;
        int i10 = a0Var.f27373b;
        a0Var.a(bArr);
        return i10;
    }

    private void wrapHeader(String str, byte b10) {
        wrapHeader(str, b10, TYPE_SIZE[b10]);
    }

    private boolean writeToABFile(a0 a0Var) {
        int length = a0Var.f27372a.length;
        File file = new File(this.path, this.name + A_SUFFIX);
        File file2 = new File(this.path, this.name + B_SUFFIX);
        try {
            if (c1.d(file) && c1.d(file2)) {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(file2, "rw");
                long j10 = length;
                randomAccessFile.setLength(j10);
                randomAccessFile2.setLength(j10);
                this.aChannel = randomAccessFile.getChannel();
                this.bChannel = randomAccessFile2.getChannel();
                FileChannel fileChannel = this.aChannel;
                FileChannel.MapMode mapMode = FileChannel.MapMode.READ_WRITE;
                MappedByteBuffer map = fileChannel.map(mapMode, 0L, j10);
                this.aBuffer = map;
                ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                map.order(byteOrder);
                MappedByteBuffer map2 = this.bChannel.map(mapMode, 0L, j10);
                this.bBuffer = map2;
                map2.order(byteOrder);
                this.aBuffer.put(a0Var.f27372a, 0, this.dataEnd);
                this.bBuffer.put(a0Var.f27372a, 0, this.dataEnd);
                return true;
            }
            throw new Exception(OPEN_FILE_FAILED);
        } catch (Exception e10) {
            error(e10);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean writeToCFile() {
        try {
            try {
                String str = this.path;
                File file = new File(str, this.name + TEMP_SUFFIX);
                if (c1.d(file)) {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
                    randomAccessFile.setLength(this.dataEnd);
                    randomAccessFile.write(this.fastBuffer.f27372a, 0, this.dataEnd);
                    randomAccessFile.close();
                    String str2 = this.path;
                    File file2 = new File(str2, this.name + C_SUFFIX);
                    if (file2.exists()) {
                        if (file2.delete()) {
                        }
                    }
                    if (file.renameTo(file2)) {
                        return true;
                    }
                    warning(new Exception("rename failed"));
                }
            } catch (Exception e10) {
                error(e10);
            }
            return false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void clear() {
        resetData();
        if (this.writingMode != 0) {
            deleteCFiles();
        }
    }

    public synchronized boolean commit() {
        this.autoCommit = true;
        return commitToCFile();
    }

    public synchronized boolean contains(String str) {
        return this.data.containsKey(str);
    }

    public synchronized void disableAutoCommit() {
        this.autoCommit = false;
    }

    public synchronized void force() {
        if (this.writingMode == 0) {
            this.aBuffer.force();
            this.bBuffer.force();
        }
    }

    void gc(int i10) {
        boolean z10;
        int i11;
        Collections.sort(this.invalids);
        mergeInvalids();
        d dVar = this.invalids.get(0);
        int i12 = dVar.f27343b;
        int i13 = this.dataEnd;
        int i14 = i13 - this.invalidBytes;
        int i15 = i14 - 12;
        int i16 = i14 - i12;
        int i17 = i13 - i12;
        if (i15 < i17 + i16) {
            z10 = true;
        } else {
            z10 = false;
        }
        if (!z10) {
            this.checksum ^= this.fastBuffer.a(i12, i17);
        }
        int size = this.invalids.size();
        int i18 = size - 1;
        int i19 = this.dataEnd - this.invalids.get(i18).f27342a;
        if (i19 > 0) {
            i11 = size;
        } else {
            i11 = i18;
        }
        int[] iArr = new int[i11 << 1];
        int i20 = dVar.f27343b;
        int i21 = dVar.f27342a;
        for (int i22 = 1; i22 < size; i22++) {
            d dVar2 = this.invalids.get(i22);
            int i23 = dVar2.f27343b - i21;
            byte[] bArr = this.fastBuffer.f27372a;
            System.arraycopy(bArr, i21, bArr, i20, i23);
            int i24 = (i22 - 1) << 1;
            iArr[i24] = i21;
            iArr[i24 + 1] = i21 - i20;
            i20 += i23;
            i21 = dVar2.f27342a;
        }
        if (i19 > 0) {
            byte[] bArr2 = this.fastBuffer.f27372a;
            System.arraycopy(bArr2, i21, bArr2, i20, i19);
            int i25 = i18 << 1;
            iArr[i25] = i21;
            iArr[i25 + 1] = i21 - i20;
        }
        clearInvalid();
        if (z10) {
            this.checksum = this.fastBuffer.a(12, i15);
        } else {
            this.checksum ^= this.fastBuffer.a(i12, i16);
        }
        this.dataEnd = i14;
        if (this.writingMode == 0) {
            this.aBuffer.putInt(0, -1);
            this.aBuffer.putLong(4, this.checksum);
            this.aBuffer.position(i12);
            this.aBuffer.put(this.fastBuffer.f27372a, i12, i16);
            this.aBuffer.putInt(0, i15);
            this.bBuffer.putInt(0, i15);
            this.bBuffer.putLong(4, this.checksum);
            this.bBuffer.position(i12);
            this.bBuffer.put(this.fastBuffer.f27372a, i12, i16);
        } else {
            this.fastBuffer.b(0, i15);
            this.fastBuffer.a(4, this.checksum);
        }
        updateOffset(i12, iArr);
        int i26 = i14 + i10;
        if (this.fastBuffer.f27372a.length - i26 > TRUNCATE_THRESHOLD) {
            truncate(i26);
        }
        info(GC_FINISH);
    }

    public synchronized Map<String, Object> getAll() {
        Object valueOf;
        int size = this.data.size();
        if (size == 0) {
            return new HashMap();
        }
        HashMap hashMap = new HashMap(((size * 4) / 3) + 1);
        for (Map.Entry<String, i> entry : this.data.entrySet()) {
            String key = entry.getKey();
            i value = entry.getValue();
            switch (value.a()) {
                case 1:
                    valueOf = Boolean.valueOf(((j) value).f27442b);
                    break;
                case 2:
                    valueOf = Integer.valueOf(((m) value).f27469b);
                    break;
                case 3:
                    valueOf = Float.valueOf(((l) value).f27448b);
                    break;
                case 4:
                    valueOf = Long.valueOf(((n) value).f27473b);
                    break;
                case 5:
                    valueOf = Double.valueOf(((k) value).f27447b);
                    break;
                case 6:
                    p pVar = (p) value;
                    if (pVar.f27482b) {
                        valueOf = getStringFromFile(pVar);
                        break;
                    } else {
                        valueOf = pVar.f27484d;
                        break;
                    }
                case 7:
                    h hVar = (h) value;
                    if (hVar.f27482b) {
                        valueOf = getArrayFromFile(hVar);
                        break;
                    } else {
                        valueOf = hVar.f27484d;
                        break;
                    }
                case 8:
                    o oVar = (o) value;
                    if (oVar.f27482b) {
                        valueOf = getObjectFromFile(oVar);
                        break;
                    } else {
                        valueOf = oVar.f27484d;
                        break;
                    }
                default:
                    valueOf = null;
                    break;
            }
            hashMap.put(key, valueOf);
        }
        return hashMap;
    }

    public byte[] getArray(String str) {
        return getArray(str, EMPTY_ARRAY);
    }

    public synchronized boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public float getFloat(String str) {
        return getFloat(str, 0.0f);
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public synchronized long getLong(String str) {
        n nVar;
        nVar = (n) this.data.get(str);
        return nVar == null ? 0L : nVar.f27473b;
    }

    public synchronized <T> T getObject(String str) {
        T t10;
        try {
            o oVar = (o) this.data.get(str);
            if (oVar != null) {
                if (oVar.f27482b) {
                    t10 = (T) getObjectFromFile(oVar);
                } else {
                    t10 = (T) oVar.f27484d;
                }
                return t10;
            }
            return null;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public String getString(String str) {
        return getString(str, "");
    }

    public synchronized Set<String> getStringSet(String str) {
        return (Set) getObject(str);
    }

    public void putAll(Map<String, Object> map) {
        putAll(map, null);
    }

    public synchronized void putArray(String str, byte[] bArr) {
        try {
            checkKey(str);
            if (bArr == null) {
                remove(str);
            } else {
                addOrUpdate(str, bArr, bArr, (h) this.data.get(str), (byte) 7);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putBoolean(String str, boolean z10) {
        try {
            checkKey(str);
            j jVar = (j) this.data.get(str);
            if (jVar == null) {
                wrapHeader(str, (byte) 1);
                a0 a0Var = this.fastBuffer;
                int i10 = a0Var.f27373b;
                a0Var.a(z10 ? (byte) 1 : (byte) 0);
                updateChange();
                this.data.put(str, new j(i10, z10));
                checkIfCommit();
            } else if (jVar.f27442b != z10) {
                jVar.f27442b = z10;
                updateBoolean(z10 ? (byte) 1 : (byte) 0, jVar.f27439a);
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putDouble(String str, double d10) {
        try {
            checkKey(str);
            k kVar = (k) this.data.get(str);
            if (kVar == null) {
                wrapHeader(str, (byte) 5);
                a0 a0Var = this.fastBuffer;
                int i10 = a0Var.f27373b;
                a0Var.a(Double.doubleToRawLongBits(d10));
                updateChange();
                this.data.put(str, new k(i10, d10));
                checkIfCommit();
            } else if (kVar.f27447b != d10) {
                long doubleToRawLongBits = Double.doubleToRawLongBits(d10);
                kVar.f27447b = d10;
                updateInt64(doubleToRawLongBits, Double.doubleToRawLongBits(kVar.f27447b) ^ doubleToRawLongBits, kVar.f27439a);
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putFloat(String str, float f10) {
        try {
            checkKey(str);
            l lVar = (l) this.data.get(str);
            if (lVar == null) {
                wrapHeader(str, (byte) 3);
                a0 a0Var = this.fastBuffer;
                int i10 = a0Var.f27373b;
                a0Var.g(Float.floatToRawIntBits(f10));
                updateChange();
                this.data.put(str, new l(i10, f10));
                checkIfCommit();
            } else if (lVar.f27448b != f10) {
                int floatToRawIntBits = Float.floatToRawIntBits(f10);
                lVar.f27448b = f10;
                updateInt32(floatToRawIntBits, (Float.floatToRawIntBits(lVar.f27448b) ^ floatToRawIntBits) & 4294967295L, lVar.f27439a);
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putInt(String str, int i10) {
        try {
            checkKey(str);
            m mVar = (m) this.data.get(str);
            if (mVar == null) {
                wrapHeader(str, (byte) 2);
                a0 a0Var = this.fastBuffer;
                int i11 = a0Var.f27373b;
                a0Var.g(i10);
                updateChange();
                this.data.put(str, new m(i11, i10));
                checkIfCommit();
            } else {
                int i12 = mVar.f27469b;
                if (i12 != i10) {
                    mVar.f27469b = i10;
                    updateInt32(i10, (i12 ^ i10) & 4294967295L, mVar.f27439a);
                    checkIfCommit();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putLong(String str, long j10) {
        try {
            checkKey(str);
            n nVar = (n) this.data.get(str);
            if (nVar == null) {
                wrapHeader(str, (byte) 4);
                a0 a0Var = this.fastBuffer;
                int i10 = a0Var.f27373b;
                a0Var.a(j10);
                updateChange();
                this.data.put(str, new n(i10, j10));
                checkIfCommit();
            } else {
                long j11 = nVar.f27473b;
                if (j11 != j10) {
                    nVar.f27473b = j10;
                    updateInt64(j10, j10 ^ j11, nVar.f27439a);
                    checkIfCommit();
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized <T> void putObject(String str, T t10, b<T> bVar) {
        byte[] bArr;
        checkKey(str);
        if (bVar != null) {
            String a10 = bVar.a();
            if (a10 != null && !a10.isEmpty() && a10.length() <= 50) {
                if (this.encoderMap.containsKey(a10)) {
                    if (t10 == null) {
                        remove(str);
                        return;
                    }
                    try {
                        bArr = bVar.a(t10);
                    } catch (Exception e10) {
                        error(e10);
                        bArr = null;
                    }
                    if (bArr == null) {
                        remove(str);
                        return;
                    }
                    int b10 = a0.b(a10);
                    a0 a0Var = new a0(b10 + 1 + bArr.length);
                    a0Var.a((byte) b10);
                    a0Var.c(a10);
                    a0Var.a(bArr);
                    addOrUpdate(str, t10, a0Var.f27372a, (o) this.data.get(str), (byte) 8);
                    return;
                }
                throw new IllegalArgumentException("Encoder hasn't been registered");
            }
            throw new IllegalArgumentException("Invalid encoder tag:" + a10);
        }
        throw new IllegalArgumentException("Encoder is null");
    }

    public synchronized void putString(String str, String str2) {
        byte[] bytes;
        try {
            checkKey(str);
            if (str2 == null) {
                remove(str);
            } else {
                p pVar = (p) this.data.get(str);
                if (str2.length() * 3 < 2048) {
                    fastPutString(str, str2, pVar);
                } else {
                    if (str2.isEmpty()) {
                        bytes = EMPTY_ARRAY;
                    } else {
                        bytes = str2.getBytes(StandardCharsets.UTF_8);
                    }
                    addOrUpdate(str, str2, bytes, pVar, (byte) 6);
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putStringSet(String str, Set<String> set) {
        try {
            if (set == null) {
                remove(str);
            } else {
                putObject(str, set, y0.f27531a);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void remove(String str) {
        try {
            i iVar = this.data.get(str);
            if (iVar != null) {
                this.data.remove(str);
                byte a10 = iVar.a();
                String str2 = null;
                if (a10 <= 5) {
                    int b10 = a0.b(str);
                    int i10 = iVar.f27439a;
                    remove(a10, i10 - (b10 + 2), i10 + TYPE_SIZE[a10]);
                } else {
                    q qVar = (q) iVar;
                    remove(a10, qVar.f27483c, qVar.f27439a + qVar.f27485e);
                    if (qVar.f27482b) {
                        str2 = (String) qVar.f27484d;
                    }
                }
                byte b11 = (byte) (a10 | ByteCompanionObject.MIN_VALUE);
                if (this.writingMode == 0) {
                    this.aBuffer.putLong(4, this.checksum);
                    this.aBuffer.put(this.removeStart, b11);
                    this.bBuffer.putLong(4, this.checksum);
                    this.bBuffer.put(this.removeStart, b11);
                } else {
                    this.fastBuffer.a(4, this.checksum);
                }
                this.removeStart = 0;
                if (str2 != null) {
                    c1.a(new File(this.path + this.name, str2));
                }
                checkGC();
                checkIfCommit();
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized String toString() {
        return "FastKV: path:" + this.path + " name:" + this.name;
    }

    private void wrapHeader(String str, byte b10, int i10) {
        int b11 = a0.b(str);
        checkKeySize(b11);
        this.updateSize = b11 + 2 + i10;
        preparePutBytes();
        this.fastBuffer.a(b10);
        putKey(str, b11);
    }

    public synchronized byte[] getArray(String str, byte[] bArr) {
        try {
            h hVar = (h) this.data.get(str);
            if (hVar != null) {
                return hVar.f27482b ? getArrayFromFile(hVar) : (byte[]) hVar.f27484d;
            }
            return bArr;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized boolean getBoolean(String str, boolean z10) {
        j jVar = (j) this.data.get(str);
        if (jVar != null) {
            z10 = jVar.f27442b;
        }
        return z10;
    }

    public synchronized double getDouble(String str, double d10) {
        k kVar = (k) this.data.get(str);
        if (kVar != null) {
            d10 = kVar.f27447b;
        }
        return d10;
    }

    public synchronized float getFloat(String str, float f10) {
        l lVar = (l) this.data.get(str);
        if (lVar != null) {
            f10 = lVar.f27448b;
        }
        return f10;
    }

    public synchronized int getInt(String str, int i10) {
        m mVar = (m) this.data.get(str);
        if (mVar != null) {
            i10 = mVar.f27469b;
        }
        return i10;
    }

    public synchronized String getString(String str, String str2) {
        try {
            p pVar = (p) this.data.get(str);
            if (pVar != null) {
                return pVar.f27482b ? getStringFromFile(pVar) : (String) pVar.f27484d;
            }
            return str2;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void putAll(Map<String, Object> map, Map<Class, b> map2) {
        try {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && !key.isEmpty()) {
                    if (value instanceof String) {
                        putString(key, (String) value);
                    } else if (value instanceof Boolean) {
                        putBoolean(key, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        putInt(key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        putLong(key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        putFloat(key, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        putDouble(key, ((Double) value).doubleValue());
                    } else if (value instanceof Set) {
                        Set<String> set = (Set) value;
                        if (!set.isEmpty() && (set.iterator().next() instanceof String)) {
                            putStringSet(key, set);
                        }
                    } else if (value instanceof byte[]) {
                        putArray(key, (byte[]) value);
                    } else if (map2 != null) {
                        b bVar = map2.get(value.getClass());
                        if (bVar != null) {
                            putObject(key, value, bVar);
                        } else {
                            warning(new Exception("missing encoder for type:" + value.getClass()));
                        }
                    } else {
                        warning(new Exception("missing encoders"));
                    }
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void error(String str) {
        c cVar = this.logger;
        if (cVar != null) {
            cVar.b(this.name, new Exception(str));
        }
    }

    public synchronized long getLong(String str, long j10) {
        n nVar = (n) this.data.get(str);
        if (nVar != null) {
            j10 = nVar.f27473b;
        }
        return j10;
    }

    private void remove(byte b10, int i10, int i11) {
        countInvalid(i10, i11);
        byte b11 = (byte) (b10 | ByteCompanionObject.MIN_VALUE);
        byte[] bArr = this.fastBuffer.f27372a;
        this.checksum = (((bArr[i10] ^ b11) & 255) << ((i10 & 7) << 3)) ^ this.checksum;
        bArr[i10] = b11;
        this.removeStart = i10;
    }
}
