/*
 * @Author: laotianwy 1695657342@qq.com
 * @Date: 2025-01-25 00:25:07
 * @LastEditors: laotianwy 1695657342@qq.com
 * @LastEditTime: 2025-01-27 16:24:03
 * @FilePath: /mock-api-serve/src/modules/response_model/response_model.controller.ts
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import { Body, Controller, Post } from '@nestjs/common';
import { ResponseModelService } from './response_model.service';
import { UpdateResponseModelDto } from './dto/response-model.dto';
import { Roles } from 'src/common/decorators/roles.decorator';
import { Role } from '@prisma/client';

@Controller('responseModel')
export class ResponseModelController {
    constructor(private readonly responseModelService: ResponseModelService) {}

    @Post('editResponseModel')
    @Roles(Role.USER, Role.ADMIN)
    async editResponseModelDto(@Body() body: UpdateResponseModelDto) {
        await this.responseModelService.updateResponseModelDto(body);
    }
}
